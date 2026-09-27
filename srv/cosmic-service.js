const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
  const { GalacticSpacefarers } = this.entities;

  this.before('CREATE', GalacticSpacefarers, async (req) => {
    const candidate = req.data;
    validateWormholeSkillsAndStardustCollection(req, candidate);
    enhanceWormholeSkillsAndStardustCollection(candidate);
    console.log(`[BEFORE CREATE] Enhanced candidate ${candidate.adventurerName}: ` +
      `Stardust = \({candidate.stardustCollection}, Skill =\){candidate.wormholeNavigationSkill}`);
  });


  this.after('CREATE', GalacticSpacefarers, async (results, req) => {
    const candidates = Array.isArray(results) ? results : [results];

    for (const candidate of candidates) {
      sendCosmicNotificationEmail(candidate);
    }
  });
});

function sendCosmicNotificationEmail(spacefarer) {
  const recipient = spacefarer.adventurerName;
  console.log(`Sending welcome email to ${recipient}... Godspeed!`);
}

function validateWormholeSkillsAndStardustCollection(req, candidate) {
  if (candidate.stardustCollection !== undefined && candidate.stardustCollection < 0) {
    return req.error(400, 'Stardust collection cannot be negative!');
  }

  if (candidate.wormholeNavigationSkill !== undefined) {
    if (candidate.wormholeNavigationSkill < 1 || candidate.wormholeNavigationSkill > 100) {
      return req.error(400, 'Wormhole navigation skill must be rated between 1 and 100.');
    }
  }

  console.log(`Candidate ${candidate.adventurerName} cleared for takeoff!`);
}

function enhanceWormholeSkillsAndStardustCollection(candidate) {
  if (!candidate.stardustCollection || candidate.stardustCollection < 10) {
    candidate.stardustCollection = (candidate.stardustCollection || 0) + 20;
  }

  if (!candidate.wormholeNavigationSkill) {
    candidate.wormholeNavigationSkill = 20;
  }

  console.log(`Candidate ${candidate.adventurerName} passed spacecamp and received their signup bonus!`);
}