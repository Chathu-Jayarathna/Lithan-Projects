import React from "react";

const Features = () => {
  return (
    <section className="grid md:grid-cols-3 mt-8 md:mt-14 gap-5 md:gap-10">
      <div className="flex flex-col text-center p-5 border rounded bg-gray-100 shadow-sm space-y-4">
        <h2 className="font-bold text-primary text-lg">
          Routing of Whereever in the neighbourhood
        </h2>
        <i className= "fa-sharp fa-solid fa-location-dot text-5xl" />
        <p className="text-gray-500 text-[15px]">
          You can go,view and contact whereever u want in the neighbourhood
          by just only one click away 
        </p>
      </div>

      <div className="flex flex-col text-center p-5 border rounded bg-gray-100 shadow-sm space-y-4">
        <h2 className="font-bold text-primary text-lg">
          Introduce yourself to the neighbourhood
        </h2>
        <i className="fa-solid fa-user-group text-5xl" />
        <p className="text-gray-500 text-[15px]">
          Those who are totally new to the area they can just simply introduce themselves by this portal,
          all the portlet are their native away to introduce them to the neighbourhood.
        </p>
      </div>

      <div className="flex flex-col text-center p-5 border rounded bg-gray-100 shadow-sm space-y-4">
        <h2 className="font-bold text-primary text-lg">
          User inputed authentic content
        </h2>
        <i className="fa-solid fa-user-plus text-5xl" />
        <p className="text-gray-500 text-[15px]">
          User of the portal are providing verified and authentic content and post
           to make people know that yes here we go in the right way,

           the living neighborhood from long time are providing the extra importent content here.
        </p>
      </div>
    </section>
  );
};

export default Features;
