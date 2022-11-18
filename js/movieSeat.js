let AC=document.querySelector('#AdultCount')
let CC=document.querySelector('#childrenCount')

// 좌석선택 함수
let tds=document.querySelectorAll('td');
tds.forEach((td)=>{
  td.addEventListener('click',()=>{
    if(td.className!='select'){
      td.classList.toggle('null');
      td.classList.toggle('target');
    }
    
  }
)});

//좌석 예매버튼
let seat_btn=document.querySelector('#seat_btn');
let table=document.querySelector('.seat');
let seatnum_hi=document.querySelector('#seatNum');
let booknum_hi=document.querySelector('#bookNum');

console.dir(seat_btn);

seat_btn.addEventListener('click',()=>{
  let totalCount=(AC.valueAsNumber + CC.valueAsNumber);
  console.log('총 인원수='+totalCount);
  let target=table.querySelectorAll('.target').length;
  console.log('좌석 선택 수='+target);
  if(totalCount==target){
    let seat_target=table.querySelectorAll('.target');
    let seatNum_text='[';
    seat_target.forEach((s)=>{
      seatNum_text+=s.innerText +','
    })
    seatNum_text+=']';
    seatnum_hi.value=seatNum_text;
    booknum_hi.value=Date.now();
  
    document.querySelector('form').submit();
  } else {
    alert('인원수와 좌석 수가 맞지 않습니다.')
  }
})



