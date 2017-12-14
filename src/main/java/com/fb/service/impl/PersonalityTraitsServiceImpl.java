package com.fb.service.impl;
import com.fb.dao.PersonalityTraitsDao;
import com.fb.entity.PersonalityTraits;
import com.fb.service.PersonalityTraitsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class PersonalityTraitsServiceImpl implements PersonalityTraitsService{
    @Autowired
    private PersonalityTraitsDao personalityTraitsDao;

    @Override
    public PersonalityTraits selectPersonalityTraitsByObj(PersonalityTraits obj){
        return personalityTraitsDao.selectPersonalityTraitsByObj(obj);
    }
    @Override
    public PersonalityTraits selectPersonalityTraitsById(Integer id){
        return personalityTraitsDao.selectPersonalityTraitsById(id);
    }
    @Override
    public int insertPersonalityTraits(PersonalityTraits value){
        return personalityTraitsDao.insertPersonalityTraits(value);
    }
    @Override
    public int insertNonEmptyPersonalityTraits(PersonalityTraits value){
        return personalityTraitsDao.insertNonEmptyPersonalityTraits(value);
    }
    @Override
    public int deletePersonalityTraitsById(Integer id){
        return personalityTraitsDao.deletePersonalityTraitsById(id);
    }
    @Override
    public int updatePersonalityTraitsById(PersonalityTraits enti){
        return personalityTraitsDao.updatePersonalityTraitsById(enti);
    }
    @Override
    public int updateNonEmptyPersonalityTraitsById(PersonalityTraits enti){
        return personalityTraitsDao.updateNonEmptyPersonalityTraitsById(enti);
    }

    public PersonalityTraitsDao getPersonalityTraitsDao() {
        return this.personalityTraitsDao;
    }

    public void setPersonalityTraitsDao(PersonalityTraitsDao personalityTraitsDao) {
        this.personalityTraitsDao = personalityTraitsDao;
    }

}