
import java.io.FileReader;
import java.io.IOException;
import weka.classifiers.Evaluation;
import weka.classifiers.functions.MultilayerPerceptron;
import weka.core.Debug.Random;
import weka.core.Instances;
import weka.core.Utils;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author SAMITHA
 */
public class MLP {
    


        MLP(){ 

                try{ 
FileReader trainreader = new FileReader("C:\\new.arff"); 
FileReader testreader = new FileReader("C:\\new.arff"); 


Instances train = new Instances(trainreader); 
Instances test = new Instances(testreader); 
train.setClassIndex(train.numAttributes() - 1); 
test.setClassIndex(test.numAttributes() - 1); 

MultilayerPerceptron mlp = new MultilayerPerceptron(); 
mlp.setOptions(Utils.splitOptions("-L 0.3 -M 0.2 -N 500 -V 0 -S 0 -E 20 -H 4")); 


mlp.buildClassifier(train); 

Evaluation eval = new Evaluation(train); 
eval.evaluateModel(mlp, test); 
System.out.println(eval.toSummaryString("\nResults\n======\n", false)); 
trainreader.close(); 
testreader.close(); 

} catch(Exception ex){ 

ex.printStackTrace(); 

} 

} 

public static void main(String args[]){ 

new MLP(); } 

}
