import com.gmongo.GMongo
import com.mongodb.DB
import org.gradle.api.tasks.testing.TestDescriptor
import org.gradle.api.tasks.testing.TestListener
import org.gradle.api.tasks.testing.TestResult

class MongoDBTestReporter implements TestListener{

    DB db;

	MongoDBTestReporter(){
        // Get a reference to the db
	}

    void beforeSuite(TestDescriptor suite){
        if(suite.parent==null){
            println "suite = $suite"

            def mongo = new GMongo()

            db = mongo.getDB("testresultarchive")
        }

    }

    @Override
    void afterSuite(TestDescriptor testDescriptor, TestResult testResult) {

    }

    @Override
    void beforeTest(TestDescriptor testDescriptor) {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    void afterTest(TestDescriptor testDescriptor, TestResult testResult) {
        db.testresults.insert([testName: "$testDescriptor", result:"${testResult.resultType}", duration:"${testResult.endTime - testResult.startTime} ms"])

    }
}
