package com.fb.dao;

import com.fb.entity.PersonalityTraits;
public interface PersonalityTraitsDao{

    PersonalityTraits selectPersonalityTraitsByObj(PersonalityTraits obj);

    PersonalityTraits selectPersonalityTraitsById(Integer id);

    int insertPersonalityTraits(PersonalityTraits value);

    int insertNonEmptyPersonalityTraits(PersonalityTraits value);

    int deletePersonalityTraitsById(Integer id);

    int updatePersonalityTraitsById(PersonalityTraits enti);

    int updateNonEmptyPersonalityTraitsById(PersonalityTraits enti);

}