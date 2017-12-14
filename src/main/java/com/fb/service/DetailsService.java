package com.fb.service;

import com.fb.entity.Details;


public interface DetailsService{

    Details selectDetailsByObj(Details obj);

    Details selectDetailsById(Integer id);

    int insertDetails(Details value);

    int insertNonEmptyDetails(Details value);

    int deleteDetailsById(Integer id);


    int updateDetailsById(Details enti);


    int updateNonEmptyDetailsById(Details enti);

}