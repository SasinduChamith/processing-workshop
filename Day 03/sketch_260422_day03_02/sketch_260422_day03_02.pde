int[] StudentMarks = {80, 30, 40, 50, 89};

void setup()
{
  int sum=0;
  for (int i=0; i < StudentMarks.length; i++)
  {

      println("marks"+i+"="+StudentMarks[i]);
      sum=sum+StudentMarks[i];
  }
  println("sum of arry="+sum);
}
