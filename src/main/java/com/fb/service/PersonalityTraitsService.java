package com.fb.service;
import java.util.List;
import com.fb.entity.PersonalityTraits;
public interface PersonalityTraitsService{


    PersonalityTraits selectPersonalityTraitsByObj(PersonalityTraits obj);

    PersonalityTraits selectPersonalityTraitsById(Integer id);

    int insertPersonalityTraits(PersonalityTraits value);

    int insertNonEmptyPersonalityTraits(PersonalityTraits value);

    int deletePersonalityTraitsById(Integer id);


    int updatePersonalityTraitsById(PersonalityTraits enti);


    int updateNonEmptyPersonalityTraitsById(PersonalityTraits enti);

}