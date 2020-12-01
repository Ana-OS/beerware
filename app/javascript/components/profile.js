const resizeGridItem = item => {
  const grid = document.getElementsByClassName("grid")[0];
  const rowHeight = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-auto-rows'));
  const rowGap = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-row-gap'));
  const rowSpan = Math.ceil((item.querySelector('.content').getBoundingClientRect().height+rowGap)/(rowHeight+rowGap));
  item.style.gridRowEnd = "span "+rowSpan;
}

const resizeAllGridItems = () => {
  const allItems = document.getElementsByClassName("item");
  for(let x = 0; x < allItems.length; x++) {
     resizeGridItem(allItems[x]);
  }
}

const initProfile = () => {
  const profile = document.querySelector('.my-profile');
  if (profile) {
    setTimeout(() => {
      resizeAllGridItems();
    }, 1000);
    window.addEventListener("resize", resizeAllGridItems);
  }
}

export { initProfile };

// function resizeGridItem(item){
//   grid = document.getElementsByClassName("grid")[0];
//   rowHeight = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-auto-rows'));
//   rowGap = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-row-gap'));
//   rowSpan = Math.ceil((item.querySelector('.content').getBoundingClientRect().height+rowGap)/(rowHeight+rowGap));
//     item.style.gridRowEnd = "span "+rowSpan;
// }

// function resizeAllGridItems(){
//   allItems = document.getElementsByClassName("item");
//   for(x=0;x<allItems.length;x++){
//     resizeGridItem(allItems[x]);
//   }
// }

// function resizeInstance(instance){
// 	item = instance.elements[0];
//   resizeGridItem(item);
// }

// window.onload = resizeAllGridItems();
// window.addEventListener("resize", resizeAllGridItems);

// allItems = document.getElementsByClassName("item");
// for(x=0;x<allItems.length;x++){
//   imagesLoaded( allItems[x], resizeInstance);
// }

// const initResizeGridItem = (item) => {
//   const grid = document.querySelector('.bs__text-masonry__grid'),
//   rowHeight = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-auto-rows')),
//   rowGap = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-row-gap')),
//   rowSpan = Math.ceil((item.querySelector('.bs-grid-item__content').getBoundingClientRect().height + rowGap) / (rowHeight + rowGap))
//   item.style.gridRowEnd = `span ${rowSpan}`
//   },

// initResizeAllGridItems = () => {
//   const allItems = document.querySelectorAll('.bs-grid-item')
//   for (let x = 0; x < allItems.length; x += 1) {
//   initResizeGridItem(allItems[x])
//   }
//   }

// (() => {
// window.addEventListener('DOMContentLoaded', initResizeAllGridItems)
// window.addEventListener('resize', initResizeAllGridItems)
// })()

// export { initResizeGridItem };
// export { initResizeAllGridItems };
