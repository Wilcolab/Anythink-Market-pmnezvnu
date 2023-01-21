import React from 'react';

const TopSeller = ({ isVerified }) => {
  return isVerified 
  ? (
    <div className="d-flex flex-grow-1 pl-2">
      <img src="verified_seller.svg" alt="Is verified icon" className="pr-1"/>TOP SELLER</div> 
   ) : null
}

export default TopSeller;