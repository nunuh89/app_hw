document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants
  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });

  // adding SF places as list items
  const handleFavoriteSubmit = (e) => {
    e.preventDefault();
    const input = document.querySelector(".favorite-input");
    const favorite = input.value;
    input.value = "";
    const li = document.createElement("li");
    li.textContent = favorite;
    const list = document.getElementById("sf-places");
    list.appendChild(li);
  };

  const submitButton = document.querySelector(".favorite-submit");
  submitButton.addEventListener("click", handleFavoriteSubmit);



  // adding new photos

  const show = (e) => {
    const photoForm = document.querySelector(".photo-form-container");
    if (photoForm.className === "photo-form-container") {
      photoForm.className = "photo-form-container hidden";
    } else {
      photoForm.className = "photo-form-container";
    }
  };

  const showButton = document.querySelector(".photo-show-button");
  showButton.addEventListener("click", show);


  const submit = (e) => {
    e.preventDefault();
    const urlInput = document.querySelector(".photo-url-input");
    const photoUrl = urlInput.value;
    urlInput.value = "";
    const img = document.createElement("img");
    img.src = photoUrl;
    const li = document.createElement("li");
    li.appendChild(img);
    const list = document.querySelector(".dog-photos");
    list.appendChild(li);
  };

  const submit = document.querySelector(".photo-url-submit");
  submit.addEventListener("click", submit);

});
