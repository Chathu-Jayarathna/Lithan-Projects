import React from "react";

const Footer = () => {
  return (
    <footer className="min-h-[60px] flex items-center justify-center border-t bg-gray-100 px-5 text-secondary font-medium mt-5">
      <p className="text-center">
        Created by{" "}
        <a
          href="https://www.linkedin.com/in/chathushi-jayarathna-578098234/"
          target="_blank"
          rel="noreferrer"
          className="text-color1 hover:decoration-solid hover:underline"
        >
          Chathushi Jayarathna
        </a>{" "}
         2023 Copyright © KYN All Rights Reserved
      </p>
    </footer>
  );
};

export default Footer;
