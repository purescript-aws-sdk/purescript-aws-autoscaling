
module AWS.AutoScaling.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.AutoScaling as AutoScaling
import AWS.AutoScaling.Types as AutoScalingTypes


-- | <p>Deletes the specified Application Auto Scaling scaling policy.</p> <p>Deleting a policy deletes the underlying alarm action, but does not delete the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated action.</p> <p>To create a scaling policy or update an existing one, see <a>PutScalingPolicy</a>.</p>
deleteScalingPolicy :: forall eff. AutoScaling.Service -> AutoScalingTypes.DeleteScalingPolicyRequest -> Aff (exception :: EXCEPTION | eff) AutoScalingTypes.DeleteScalingPolicyResponse
deleteScalingPolicy (AutoScaling.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteScalingPolicy"


-- | <p>Deletes the specified Application Auto Scaling scheduled action.</p>
deleteScheduledAction :: forall eff. AutoScaling.Service -> AutoScalingTypes.DeleteScheduledActionRequest -> Aff (exception :: EXCEPTION | eff) AutoScalingTypes.DeleteScheduledActionResponse
deleteScheduledAction (AutoScaling.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteScheduledAction"


-- | <p>Deregisters a scalable target.</p> <p>Deregistering a scalable target deletes the scaling policies that are associated with it.</p> <p>To create a scalable target or update an existing one, see <a>RegisterScalableTarget</a>.</p>
deregisterScalableTarget :: forall eff. AutoScaling.Service -> AutoScalingTypes.DeregisterScalableTargetRequest -> Aff (exception :: EXCEPTION | eff) AutoScalingTypes.DeregisterScalableTargetResponse
deregisterScalableTarget (AutoScaling.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deregisterScalableTarget"


-- | <p>Gets information about the scalable targets in the specified namespace.</p> <p>You can filter the results using the <code>ResourceIds</code> and <code>ScalableDimension</code> parameters.</p> <p>To create a scalable target or update an existing one, see <a>RegisterScalableTarget</a>. If you are no longer using a scalable target, you can deregister it using <a>DeregisterScalableTarget</a>.</p>
describeScalableTargets :: forall eff. AutoScaling.Service -> AutoScalingTypes.DescribeScalableTargetsRequest -> Aff (exception :: EXCEPTION | eff) AutoScalingTypes.DescribeScalableTargetsResponse
describeScalableTargets (AutoScaling.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeScalableTargets"


-- | <p>Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks.</p> <p>You can filter the results using the <code>ResourceId</code> and <code>ScalableDimension</code> parameters.</p> <p>Scaling activities are triggered by CloudWatch alarms that are associated with scaling policies. To view the scaling policies for a service namespace, see <a>DescribeScalingPolicies</a>. To create a scaling policy or update an existing one, see <a>PutScalingPolicy</a>.</p>
describeScalingActivities :: forall eff. AutoScaling.Service -> AutoScalingTypes.DescribeScalingActivitiesRequest -> Aff (exception :: EXCEPTION | eff) AutoScalingTypes.DescribeScalingActivitiesResponse
describeScalingActivities (AutoScaling.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeScalingActivities"


-- | <p>Describes the scaling policies for the specified service namespace.</p> <p>You can filter the results using the <code>ResourceId</code>, <code>ScalableDimension</code>, and <code>PolicyNames</code> parameters.</p> <p>To create a scaling policy or update an existing one, see <a>PutScalingPolicy</a>. If you are no longer using a scaling policy, you can delete it using <a>DeleteScalingPolicy</a>.</p>
describeScalingPolicies :: forall eff. AutoScaling.Service -> AutoScalingTypes.DescribeScalingPoliciesRequest -> Aff (exception :: EXCEPTION | eff) AutoScalingTypes.DescribeScalingPoliciesResponse
describeScalingPolicies (AutoScaling.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeScalingPolicies"


-- | <p>Describes the scheduled actions for the specified service namespace.</p> <p>You can filter the results using the <code>ResourceId</code>, <code>ScalableDimension</code>, and <code>ScheduledActionNames</code> parameters.</p> <p>To create a scheduled action or update an existing one, see <a>PutScheduledAction</a>. If you are no longer using a scheduled action, you can delete it using <a>DeleteScheduledAction</a>.</p>
describeScheduledActions :: forall eff. AutoScaling.Service -> AutoScalingTypes.DescribeScheduledActionsRequest -> Aff (exception :: EXCEPTION | eff) AutoScalingTypes.DescribeScheduledActionsResponse
describeScheduledActions (AutoScaling.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeScheduledActions"


-- | <p>Creates or updates a policy for an Application Auto Scaling scalable target.</p> <p>Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scaling policy applies to the scalable target identified by those three attributes. You cannot create a scaling policy until you register the scalable target using <a>RegisterScalableTarget</a>.</p> <p>To update a policy, specify its policy name and the parameters that you want to change. Any parameters that you don't specify are not changed by this update request.</p> <p>You can view the scaling policies for a service namespace using <a>DescribeScalingPolicies</a>. If you are no longer using a scaling policy, you can delete it using <a>DeleteScalingPolicy</a>.</p>
putScalingPolicy :: forall eff. AutoScaling.Service -> AutoScalingTypes.PutScalingPolicyRequest -> Aff (exception :: EXCEPTION | eff) AutoScalingTypes.PutScalingPolicyResponse
putScalingPolicy (AutoScaling.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putScalingPolicy"


-- | <p>Creates or updates a scheduled action for an Application Auto Scaling scalable target.</p> <p>Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scheduled action applies to the scalable target identified by those three attributes. You cannot create a scheduled action until you register the scalable target using <a>RegisterScalableTarget</a>.</p> <p>To update an action, specify its name and the parameters that you want to change. If you don't specify start and end times, the old values are deleted. Any other parameters that you don't specify are not changed by this update request.</p> <p>You can view the scheduled actions using <a>DescribeScheduledActions</a>. If you are no longer using a scheduled action, you can delete it using <a>DeleteScheduledAction</a>.</p>
putScheduledAction :: forall eff. AutoScaling.Service -> AutoScalingTypes.PutScheduledActionRequest -> Aff (exception :: EXCEPTION | eff) AutoScalingTypes.PutScheduledActionResponse
putScheduledAction (AutoScaling.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putScheduledAction"


-- | <p>Registers or updates a scalable target. A scalable target is a resource that Application Auto Scaling can scale out or scale in. After you have registered a scalable target, you can use this operation to update the minimum and maximum values for its scalable dimension.</p> <p>After you register a scalable target, you can create and apply scaling policies using <a>PutScalingPolicy</a>. You can view the scaling policies for a service namespace using <a>DescribeScalableTargets</a>. If you no longer need a scalable target, you can deregister it using <a>DeregisterScalableTarget</a>.</p>
registerScalableTarget :: forall eff. AutoScaling.Service -> AutoScalingTypes.RegisterScalableTargetRequest -> Aff (exception :: EXCEPTION | eff) AutoScalingTypes.RegisterScalableTargetResponse
registerScalableTarget (AutoScaling.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "registerScalableTarget"
