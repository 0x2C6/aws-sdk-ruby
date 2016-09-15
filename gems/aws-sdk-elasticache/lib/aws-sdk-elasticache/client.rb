# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/request_signer.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/protocols/query.rb'

module Aws
  module ElastiCache
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :elasticache

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::Query)

      # @option options [required, Aws::CredentialProvider] :credentials
      #   Your AWS credentials. This can be an instance of any one of the
      #   following classes:
      #
      #   * `Aws::Credentials` - Used for configuring static, non-refreshing
      #     credentials.
      #
      #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
      #     from an EC2 IMDS on an EC2 instance.
      #
      #   * `Aws::SharedCredentials` - Used for loading credentials from a
      #     shared file, such as `~/.aws/config`.
      #
      #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
      #
      #   When `:credentials` are not configured directly, the following
      #   locations will be searched for credentials:
      #
      #   * `Aws.config[:credentials]`
      #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
      #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      #   * EC2 IMDS instance profile - When used by default, the timeouts are
      #     very aggressive. Construct and pass an instance of
      #     `Aws::InstanceProfileCredentails` to enable retries and extended
      #     timeouts.
      # @option options [required, String] :region
      #   The AWS region to connect to.  The configured `:region` is
      #   used to determine the service `:endpoint`. When not passed,
      #   a default `:region` is search for in the following locations:
      #
      #   * `Aws.config[:region]`
      #   * `ENV['AWS_REGION']`
      #   * `ENV['AMAZON_REGION']`
      #   * `ENV['AWS_DEFAULT_REGION']`
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # The *AddTagsToResource* action adds up to 10 cost allocation tags to
      # the named resource. A *cost allocation tag* is a key-value pair where
      # the key and value are case-sensitive. Cost allocation tags can be used
      # to categorize and track your AWS costs.
      #
      # When you apply tags to your ElastiCache resources, AWS generates a
      # cost allocation report as a comma-separated value (CSV) file with your
      # usage and costs aggregated by your tags. You can apply tags that
      # represent business categories (such as cost centers, application
      # names, or owners) to organize your costs across multiple services. For
      # more information, see [Using Cost Allocation Tags in Amazon
      # ElastiCache][1] in the *ElastiCache User Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Tagging.html
      # @option params [required, String] :resource_name
      #   The Amazon Resource Name (ARN) of the resource to which the tags are
      #   to be added, for example
      #   `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or
      #   `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.
      #
      #   For more information on ARNs, go to [Amazon Resource Names (ARNs) and
      #   AWS Service Namespaces][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
      # @option params [required, Array<Types::Tag>] :tags
      #   A list of cost allocation tags to be added to this resource. A tag is
      #   a key-value pair. A tag key must be accompanied by a tag value.
      # @return [Types::TagListMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::TagListMessage#tag_list #TagList} => Array&lt;Types::Tag&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_tags_to_resource({
      #     resource_name: "String", # required
      #     tags: [ # required
      #       {
      #         key: "String",
      #         value: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.tag_list #=> Array
      #   resp.tag_list[0].key #=> String
      #   resp.tag_list[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def add_tags_to_resource(params = {}, options = {})
        req = build_request(:add_tags_to_resource, params)
        req.send_request(options)
      end

      # The *AuthorizeCacheSecurityGroupIngress* action allows network ingress
      # to a cache security group. Applications using ElastiCache must be
      # running on Amazon EC2, and Amazon EC2 security groups are used as the
      # authorization mechanism.
      #
      # <note markdown="1"> You cannot authorize ingress from an Amazon EC2 security group in one
      # region to an ElastiCache cluster in another region.
      #
      #  </note>
      # @option params [required, String] :cache_security_group_name
      #   The cache security group which will allow network ingress.
      # @option params [required, String] :ec2_security_group_name
      #   The Amazon EC2 security group to be authorized for ingress to the
      #   cache security group.
      # @option params [required, String] :ec2_security_group_owner_id
      #   The AWS account number of the Amazon EC2 security group owner. Note
      #   that this is not the same thing as an AWS access key ID - you must
      #   provide a valid AWS account number for this parameter.
      # @return [Types::AuthorizeCacheSecurityGroupIngressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AuthorizeCacheSecurityGroupIngressResult#cache_security_group #CacheSecurityGroup} => Types::CacheSecurityGroup
      #
      # @example Request syntax with placeholder values
      #   resp = client.authorize_cache_security_group_ingress({
      #     cache_security_group_name: "String", # required
      #     ec2_security_group_name: "String", # required
      #     ec2_security_group_owner_id: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.cache_security_group.owner_id #=> String
      #   resp.cache_security_group.cache_security_group_name #=> String
      #   resp.cache_security_group.description #=> String
      #   resp.cache_security_group.ec2_security_groups #=> Array
      #   resp.cache_security_group.ec2_security_groups[0].status #=> String
      #   resp.cache_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
      #   resp.cache_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def authorize_cache_security_group_ingress(params = {}, options = {})
        req = build_request(:authorize_cache_security_group_ingress, params)
        req.send_request(options)
      end

      # The *CopySnapshot* action makes a copy of an existing snapshot.
      #
      # <important markdown="1"> Users or groups that have permissions to use the *CopySnapshot* API
      # can create their own Amazon S3 buckets and copy snapshots to it. To
      # control access to your snapshots, use an IAM policy to control who has
      # the ability to use the *CopySnapshot* API. For more information about
      # using IAM to control the use of ElastiCache APIs, see [Exporting
      # Snapshots][1] and [Authentication &amp; Access Control][2].
      #
      #  </important>
      #
      # **Erorr Message:**
      #
      # * **Error Message:** The authenticated user does not have sufficient
      #   permissions to perform the desired activity.
      # 
      #   **Solution:** Contact your system administrator to get the needed
      #   permissions.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElastiCache/latest/Snapshots.Exporting.html
      # [2]: http://docs.aws.amazon.com/ElastiCache/latest/IAM.html
      # @option params [required, String] :source_snapshot_name
      #   The name of an existing snapshot from which to make a copy.
      # @option params [required, String] :target_snapshot_name
      #   A name for the snapshot copy. ElastiCache does not permit overwriting
      #   a snapshot, therefore this name must be unique within its context -
      #   ElastiCache or an Amazon S3 bucket if exporting.
      #
      #   **Error Message**
      #
      #   * **Error Message:** The S3 bucket %s already contains an object with
      #     key %s.
      #
      #     **Solution:** Give the *TargetSnapshotName* a new and unique value.
      #     If exporting a snapshot, you could alternatively create a new Amazon
      #     S3 bucket and use this same value for *TargetSnapshotName*.
      # @option params [String] :target_bucket
      #   The Amazon S3 bucket to which the snapshot will be exported. This
      #   parameter is used only when exporting a snapshot for external access.
      #
      #   When using this parameter to export a snapshot, be sure Amazon
      #   ElastiCache has the needed permissions to this S3 bucket. For more
      #   information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
      #   Bucket][1] in the *Amazon ElastiCache User Guide*.
      #
      #   **Error Messages:**
      #
      #   You could receive one of the following error messages.
      #
      #   **Erorr Messages**
      #
      #   * <b>Error Message: </b> ElastiCache has not been granted READ
      #     permissions %s on the S3 Bucket.
      #
      #     **Solution:** Add List and Read permissions on the bucket.
      #
      #   * <b>Error Message: </b> ElastiCache has not been granted WRITE
      #     permissions %s on the S3 Bucket.
      #
      #     **Solution:** Add Upload/Delete permissions on the bucket.
      #
      #   * <b>Error Message: </b> ElastiCache has not been granted READ\_ACP
      #     permissions %s on the S3 Bucket.
      #
      #     **Solution:** Add View Permissions permissions on the bucket.
      #
      #   * **Error Message:** The S3 bucket %s is outside of the region.
      #
      #     **Solution:** Before exporting your snapshot, create a new Amazon S3
      #     bucket in the same region as your snapshot. For more information,
      #     see [Step 1: Create an Amazon S3 Bucket][2].
      #
      #   * **Error Message:** The S3 bucket %s does not exist.
      #
      #     **Solution:** Create an Amazon S3 bucket in the same region as your
      #     snapshot. For more information, see [Step 1: Create an Amazon S3
      #     Bucket][2].
      #
      #   * **Error Message:** The S3 bucket %s is not owned by the
      #     authenticated user.
      #
      #     **Solution:** Create an Amazon S3 bucket in the same region as your
      #     snapshot. For more information, see [Step 1: Create an Amazon S3
      #     Bucket][2].
      #
      #   * **Error Message:** The authenticated user does not have sufficient
      #     permissions to perform the desired activity.
      #
      #     **Solution:** Contact your system administrator to get the needed
      #     permissions.
      #
      #   For more information, see [Exporting a Snapshot][3] in the *Amazon
      #   ElastiCache User Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess
      #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.CreateBucket
      #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html
      # @return [Types::CopySnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CopySnapshotResult#snapshot #Snapshot} => Types::Snapshot
      #
      # @example Request syntax with placeholder values
      #   resp = client.copy_snapshot({
      #     source_snapshot_name: "String", # required
      #     target_snapshot_name: "String", # required
      #     target_bucket: "String",
      #   })
      #
      # @example Response structure
      #   resp.snapshot.snapshot_name #=> String
      #   resp.snapshot.cache_cluster_id #=> String
      #   resp.snapshot.snapshot_status #=> String
      #   resp.snapshot.snapshot_source #=> String
      #   resp.snapshot.cache_node_type #=> String
      #   resp.snapshot.engine #=> String
      #   resp.snapshot.engine_version #=> String
      #   resp.snapshot.num_cache_nodes #=> Integer
      #   resp.snapshot.preferred_availability_zone #=> String
      #   resp.snapshot.cache_cluster_create_time #=> Time
      #   resp.snapshot.preferred_maintenance_window #=> String
      #   resp.snapshot.topic_arn #=> String
      #   resp.snapshot.port #=> Integer
      #   resp.snapshot.cache_parameter_group_name #=> String
      #   resp.snapshot.cache_subnet_group_name #=> String
      #   resp.snapshot.vpc_id #=> String
      #   resp.snapshot.auto_minor_version_upgrade #=> Boolean
      #   resp.snapshot.snapshot_retention_limit #=> Integer
      #   resp.snapshot.snapshot_window #=> String
      #   resp.snapshot.node_snapshots #=> Array
      #   resp.snapshot.node_snapshots[0].cache_node_id #=> String
      #   resp.snapshot.node_snapshots[0].cache_size #=> String
      #   resp.snapshot.node_snapshots[0].cache_node_create_time #=> Time
      #   resp.snapshot.node_snapshots[0].snapshot_create_time #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def copy_snapshot(params = {}, options = {})
        req = build_request(:copy_snapshot, params)
        req.send_request(options)
      end

      # The *CreateCacheCluster* action creates a cache cluster. All nodes in
      # the cache cluster run the same protocol-compliant cache engine
      # software, either Memcached or Redis.
      # @option params [required, String] :cache_cluster_id
      #   The node group identifier. This parameter is stored as a lowercase
      #   string.
      #
      #   **Constraints:**
      #
      #   * A name must contain from 1 to 20 alphanumeric characters or hyphens.
      #
      #   * The first character must be a letter.
      #
      #   * A name cannot end with a hyphen or contain two consecutive hyphens.
      # @option params [String] :replication_group_id
      #   The ID of the replication group to which this cache cluster should
      #   belong. If this parameter is specified, the cache cluster will be
      #   added to the specified replication group as a read replica; otherwise,
      #   the cache cluster will be a standalone primary that is not part of any
      #   replication group.
      #
      #   If the specified replication group is Multi-AZ enabled and the
      #   availability zone is not specified, the cache cluster will be created
      #   in availability zones that provide the best spread of read replicas
      #   across availability zones.
      #
      #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
      #
      #    </note>
      # @option params [String] :az_mode
      #   Specifies whether the nodes in this Memcached node group are created
      #   in a single Availability Zone or created across multiple Availability
      #   Zones in the cluster\'s region.
      #
      #   This parameter is only supported for Memcached cache clusters.
      #
      #   If the `AZMode` and `PreferredAvailabilityZones` are not specified,
      #   ElastiCache assumes `single-az` mode.
      # @option params [String] :preferred_availability_zone
      #   The EC2 Availability Zone in which the cache cluster will be created.
      #
      #   All nodes belonging to this Memcached cache cluster are placed in the
      #   preferred Availability Zone. If you want to create your nodes across
      #   multiple Availability Zones, use `PreferredAvailabilityZones`.
      #
      #   Default: System chosen Availability Zone.
      # @option params [Array<String>] :preferred_availability_zones
      #   A list of the Availability Zones in which cache nodes will be created.
      #   The order of the zones in the list is not important.
      #
      #   This option is only supported on Memcached.
      #
      #   <note markdown="1"> If you are creating your cache cluster in an Amazon VPC (recommended)
      #   you can only locate nodes in Availability Zones that are associated
      #   with the subnets in the selected subnet group.
      #
      #    The number of Availability Zones listed must equal the value of
      #   `NumCacheNodes`.
      #
      #    </note>
      #
      #   If you want all the nodes in the same Availability Zone, use
      #   `PreferredAvailabilityZone` instead, or repeat the Availability Zone
      #   multiple times in the list.
      #
      #   Default: System chosen Availability Zones.
      #
      #   Example: One Memcached node in each of three different Availability
      #   Zones:
      #   `PreferredAvailabilityZones.member.1=us-west-2a&amp;PreferredAvailabilityZones.member.2=us-west-2b&amp;PreferredAvailabilityZones.member.3=us-west-2c`
      #
      #   Example: All three Memcached nodes in one Availability Zone:
      #   `PreferredAvailabilityZones.member.1=us-west-2a&amp;PreferredAvailabilityZones.member.2=us-west-2a&amp;PreferredAvailabilityZones.member.3=us-west-2a`
      # @option params [Integer] :num_cache_nodes
      #   The initial number of cache nodes that the cache cluster will have.
      #
      #   For clusters running Redis, this value must be 1. For clusters running
      #   Memcached, this value must be between 1 and 20.
      #
      #   If you need more than 20 nodes for your Memcached cluster, please fill
      #   out the ElastiCache Limit Increase Request form at
      #   [http://aws.amazon.com/contact-us/elasticache-node-limit-request/][1].
      #
      #
      #
      #   [1]: http://aws.amazon.com/contact-us/elasticache-node-limit-request/
      # @option params [String] :cache_node_type
      #   The compute and memory capacity of the nodes in the node group.
      #
      #   Valid node types are as follows:
      #
      #   * General purpose:
      #
      #     * Current generation: `cache.t2.micro`, `cache.t2.small`,
      #       `cache.t2.medium`, `cache.m3.medium`, `cache.m3.large`,
      #       `cache.m3.xlarge`, `cache.m3.2xlarge`
      #
      #     * Previous generation: `cache.t1.micro`, `cache.m1.small`,
      #       `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`
      #
      #   * Compute optimized: `cache.c1.xlarge`
      #
      #   * Memory optimized:
      #
      #     * Current generation: `cache.r3.large`, `cache.r3.xlarge`,
      #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
      #
      #     * Previous generation: `cache.m2.xlarge`, `cache.m2.2xlarge`,
      #       `cache.m2.4xlarge`
      #
      #   **Notes:**
      #
      #   * All t2 instances are created in an Amazon Virtual Private Cloud
      #     (VPC).
      #
      #   * Redis backup/restore is not supported for t2 instances.
      #
      #   * Redis Append-only files (AOF) functionality is not supported for t1
      #     or t2 instances.
      #
      #   For a complete listing of cache node types and specifications, see
      #   [Amazon ElastiCache Product Features and Details][1] and [Cache Node
      #   Type-Specific Parameters for Memcached][2] or [Cache Node
      #   Type-Specific Parameters for Redis][3].
      #
      #
      #
      #   [1]: http://aws.amazon.com/elasticache/details
      #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#CacheParameterGroups.Memcached.NodeSpecific
      #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#CacheParameterGroups.Redis.NodeSpecific
      # @option params [String] :engine
      #   The name of the cache engine to be used for this cache cluster.
      #
      #   Valid values for this parameter are:
      #
      #   `memcached` \| `redis`
      # @option params [String] :engine_version
      #   The version number of the cache engine to be used for this cache
      #   cluster. To view the supported cache engine versions, use the
      #   *DescribeCacheEngineVersions* action.
      #
      #   **Important:** You can upgrade to a newer engine version (see
      #   [Selecting a Cache Engine and Version][1]), but you cannot downgrade
      #   to an earlier engine version. If you want to use an earlier engine
      #   version, you must delete the existing cache cluster or replication
      #   group and create it anew with the earlier engine version.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement
      # @option params [String] :cache_parameter_group_name
      #   The name of the parameter group to associate with this cache cluster.
      #   If this argument is omitted, the default parameter group for the
      #   specified engine is used.
      # @option params [String] :cache_subnet_group_name
      #   The name of the subnet group to be used for the cache cluster.
      #
      #   Use this parameter only when you are creating a cache cluster in an
      #   Amazon Virtual Private Cloud (VPC).
      # @option params [Array<String>] :cache_security_group_names
      #   A list of security group names to associate with this cache cluster.
      #
      #   Use this parameter only when you are creating a cache cluster outside
      #   of an Amazon Virtual Private Cloud (VPC).
      # @option params [Array<String>] :security_group_ids
      #   One or more VPC security groups associated with the cache cluster.
      #
      #   Use this parameter only when you are creating a cache cluster in an
      #   Amazon Virtual Private Cloud (VPC).
      # @option params [Array<Types::Tag>] :tags
      #   A list of cost allocation tags to be added to this resource. A tag is
      #   a key-value pair. A tag key must be accompanied by a tag value.
      # @option params [Array<String>] :snapshot_arns
      #   A single-element string list containing an Amazon Resource Name (ARN)
      #   that uniquely identifies a Redis RDB snapshot file stored in Amazon
      #   S3. The snapshot file will be used to populate the node group. The
      #   Amazon S3 object name in the ARN cannot contain any commas.
      #
      #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
      #
      #    </note>
      #
      #   Example of an Amazon S3 ARN: `arn:aws:s3:::my_bucket/snapshot1.rdb`
      # @option params [String] :snapshot_name
      #   The name of a snapshot from which to restore data into the new node
      #   group. The snapshot status changes to `restoring` while the new node
      #   group is being created.
      #
      #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
      #
      #    </note>
      # @option params [String] :preferred_maintenance_window
      #   Specifies the weekly time range during which maintenance on the cache
      #   cluster is performed. It is specified as a range in the format
      #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
      #   window is a 60 minute period. Valid values for `ddd` are:
      #
      #   * `sun`
      #
      #   * `mon`
      #
      #   * `tue`
      #
      #   * `wed`
      #
      #   * `thu`
      #
      #   * `fri`
      #
      #   * `sat`
      #
      #   Example: `sun:05:00-sun:09:00`
      # @option params [Integer] :port
      #   The port number on which each of the cache nodes will accept
      #   connections.
      # @option params [String] :notification_topic_arn
      #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
      #   Service (SNS) topic to which notifications will be sent.
      #
      #   <note markdown="1"> The Amazon SNS topic owner must be the same as the cache cluster
      #   owner.
      #
      #    </note>
      # @option params [Boolean] :auto_minor_version_upgrade
      #   This parameter is currently disabled.
      # @option params [Integer] :snapshot_retention_limit
      #   The number of days for which ElastiCache will retain automatic
      #   snapshots before deleting them. For example, if you set
      #   `SnapshotRetentionLimit` to 5, then a snapshot that was taken today
      #   will be retained for 5 days before being deleted.
      #
      #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
      #
      #    </note>
      #
      #   Default: 0 (i.e., automatic backups are disabled for this cache
      #   cluster).
      # @option params [String] :snapshot_window
      #   The daily time range (in UTC) during which ElastiCache will begin
      #   taking a daily snapshot of your node group.
      #
      #   Example: `05:00-09:00`
      #
      #   If you do not specify this parameter, then ElastiCache will
      #   automatically choose an appropriate time range.
      #
      #   **Note:** This parameter is only valid if the `Engine` parameter is
      #   `redis`.
      # @return [Types::CreateCacheClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateCacheClusterResult#cache_cluster #CacheCluster} => Types::CacheCluster
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_cache_cluster({
      #     cache_cluster_id: "String", # required
      #     replication_group_id: "String",
      #     az_mode: "single-az", # accepts single-az, cross-az
      #     preferred_availability_zone: "String",
      #     preferred_availability_zones: ["String"],
      #     num_cache_nodes: 1,
      #     cache_node_type: "String",
      #     engine: "String",
      #     engine_version: "String",
      #     cache_parameter_group_name: "String",
      #     cache_subnet_group_name: "String",
      #     cache_security_group_names: ["String"],
      #     security_group_ids: ["String"],
      #     tags: [
      #       {
      #         key: "String",
      #         value: "String",
      #       },
      #     ],
      #     snapshot_arns: ["String"],
      #     snapshot_name: "String",
      #     preferred_maintenance_window: "String",
      #     port: 1,
      #     notification_topic_arn: "String",
      #     auto_minor_version_upgrade: false,
      #     snapshot_retention_limit: 1,
      #     snapshot_window: "String",
      #   })
      #
      # @example Response structure
      #   resp.cache_cluster.cache_cluster_id #=> String
      #   resp.cache_cluster.configuration_endpoint.address #=> String
      #   resp.cache_cluster.configuration_endpoint.port #=> Integer
      #   resp.cache_cluster.client_download_landing_page #=> String
      #   resp.cache_cluster.cache_node_type #=> String
      #   resp.cache_cluster.engine #=> String
      #   resp.cache_cluster.engine_version #=> String
      #   resp.cache_cluster.cache_cluster_status #=> String
      #   resp.cache_cluster.num_cache_nodes #=> Integer
      #   resp.cache_cluster.preferred_availability_zone #=> String
      #   resp.cache_cluster.cache_cluster_create_time #=> Time
      #   resp.cache_cluster.preferred_maintenance_window #=> String
      #   resp.cache_cluster.pending_modified_values.num_cache_nodes #=> Integer
      #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove #=> Array
      #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove[0] #=> String
      #   resp.cache_cluster.pending_modified_values.engine_version #=> String
      #   resp.cache_cluster.pending_modified_values.cache_node_type #=> String
      #   resp.cache_cluster.notification_configuration.topic_arn #=> String
      #   resp.cache_cluster.notification_configuration.topic_status #=> String
      #   resp.cache_cluster.cache_security_groups #=> Array
      #   resp.cache_cluster.cache_security_groups[0].cache_security_group_name #=> String
      #   resp.cache_cluster.cache_security_groups[0].status #=> String
      #   resp.cache_cluster.cache_parameter_group.cache_parameter_group_name #=> String
      #   resp.cache_cluster.cache_parameter_group.parameter_apply_status #=> String
      #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot #=> Array
      #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot[0] #=> String
      #   resp.cache_cluster.cache_subnet_group_name #=> String
      #   resp.cache_cluster.cache_nodes #=> Array
      #   resp.cache_cluster.cache_nodes[0].cache_node_id #=> String
      #   resp.cache_cluster.cache_nodes[0].cache_node_status #=> String
      #   resp.cache_cluster.cache_nodes[0].cache_node_create_time #=> Time
      #   resp.cache_cluster.cache_nodes[0].endpoint.address #=> String
      #   resp.cache_cluster.cache_nodes[0].endpoint.port #=> Integer
      #   resp.cache_cluster.cache_nodes[0].parameter_group_status #=> String
      #   resp.cache_cluster.cache_nodes[0].source_cache_node_id #=> String
      #   resp.cache_cluster.cache_nodes[0].customer_availability_zone #=> String
      #   resp.cache_cluster.auto_minor_version_upgrade #=> Boolean
      #   resp.cache_cluster.security_groups #=> Array
      #   resp.cache_cluster.security_groups[0].security_group_id #=> String
      #   resp.cache_cluster.security_groups[0].status #=> String
      #   resp.cache_cluster.replication_group_id #=> String
      #   resp.cache_cluster.snapshot_retention_limit #=> Integer
      #   resp.cache_cluster.snapshot_window #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_cache_cluster(params = {}, options = {})
        req = build_request(:create_cache_cluster, params)
        req.send_request(options)
      end

      # The *CreateCacheParameterGroup* action creates a new cache parameter
      # group. A cache parameter group is a collection of parameters that you
      # apply to all of the nodes in a cache cluster.
      # @option params [required, String] :cache_parameter_group_name
      #   A user-specified name for the cache parameter group.
      # @option params [required, String] :cache_parameter_group_family
      #   The name of the cache parameter group family the cache parameter group
      #   can be used with.
      #
      #   Valid values are: `memcached1.4` \| `redis2.6` \| `redis2.8`
      # @option params [required, String] :description
      #   A user-specified description for the cache parameter group.
      # @return [Types::CreateCacheParameterGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateCacheParameterGroupResult#cache_parameter_group #CacheParameterGroup} => Types::CacheParameterGroup
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_cache_parameter_group({
      #     cache_parameter_group_name: "String", # required
      #     cache_parameter_group_family: "String", # required
      #     description: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.cache_parameter_group.cache_parameter_group_name #=> String
      #   resp.cache_parameter_group.cache_parameter_group_family #=> String
      #   resp.cache_parameter_group.description #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_cache_parameter_group(params = {}, options = {})
        req = build_request(:create_cache_parameter_group, params)
        req.send_request(options)
      end

      # The *CreateCacheSecurityGroup* action creates a new cache security
      # group. Use a cache security group to control access to one or more
      # cache clusters.
      #
      # Cache security groups are only used when you are creating a cache
      # cluster outside of an Amazon Virtual Private Cloud (VPC). If you are
      # creating a cache cluster inside of a VPC, use a cache subnet group
      # instead. For more information, see [CreateCacheSubnetGroup][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheSubnetGroup.html
      # @option params [required, String] :cache_security_group_name
      #   A name for the cache security group. This value is stored as a
      #   lowercase string.
      #
      #   Constraints: Must contain no more than 255 alphanumeric characters.
      #   Cannot be the word \"Default\".
      #
      #   Example: `mysecuritygroup`
      # @option params [required, String] :description
      #   A description for the cache security group.
      # @return [Types::CreateCacheSecurityGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateCacheSecurityGroupResult#cache_security_group #CacheSecurityGroup} => Types::CacheSecurityGroup
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_cache_security_group({
      #     cache_security_group_name: "String", # required
      #     description: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.cache_security_group.owner_id #=> String
      #   resp.cache_security_group.cache_security_group_name #=> String
      #   resp.cache_security_group.description #=> String
      #   resp.cache_security_group.ec2_security_groups #=> Array
      #   resp.cache_security_group.ec2_security_groups[0].status #=> String
      #   resp.cache_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
      #   resp.cache_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_cache_security_group(params = {}, options = {})
        req = build_request(:create_cache_security_group, params)
        req.send_request(options)
      end

      # The *CreateCacheSubnetGroup* action creates a new cache subnet group.
      #
      # Use this parameter only when you are creating a cluster in an Amazon
      # Virtual Private Cloud (VPC).
      # @option params [required, String] :cache_subnet_group_name
      #   A name for the cache subnet group. This value is stored as a lowercase
      #   string.
      #
      #   Constraints: Must contain no more than 255 alphanumeric characters or
      #   hyphens.
      #
      #   Example: `mysubnetgroup`
      # @option params [required, String] :cache_subnet_group_description
      #   A description for the cache subnet group.
      # @option params [required, Array<String>] :subnet_ids
      #   A list of VPC subnet IDs for the cache subnet group.
      # @return [Types::CreateCacheSubnetGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateCacheSubnetGroupResult#cache_subnet_group #CacheSubnetGroup} => Types::CacheSubnetGroup
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_cache_subnet_group({
      #     cache_subnet_group_name: "String", # required
      #     cache_subnet_group_description: "String", # required
      #     subnet_ids: ["String"], # required
      #   })
      #
      # @example Response structure
      #   resp.cache_subnet_group.cache_subnet_group_name #=> String
      #   resp.cache_subnet_group.cache_subnet_group_description #=> String
      #   resp.cache_subnet_group.vpc_id #=> String
      #   resp.cache_subnet_group.subnets #=> Array
      #   resp.cache_subnet_group.subnets[0].subnet_identifier #=> String
      #   resp.cache_subnet_group.subnets[0].subnet_availability_zone.name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_cache_subnet_group(params = {}, options = {})
        req = build_request(:create_cache_subnet_group, params)
        req.send_request(options)
      end

      # The *CreateReplicationGroup* action creates a replication group. A
      # replication group is a collection of cache clusters, where one of the
      # cache clusters is a read/write primary and the others are read-only
      # replicas. Writes to the primary are automatically propagated to the
      # replicas.
      #
      # When you create a replication group, you must specify an existing
      # cache cluster that is in the primary role. When the replication group
      # has been successfully created, you can add one or more read replica
      # replicas to it, up to a total of five read replicas.
      #
      # <note markdown="1"> This action is valid only for Redis.
      #
      #  </note>
      # @option params [required, String] :replication_group_id
      #   The replication group identifier. This parameter is stored as a
      #   lowercase string.
      #
      #   Constraints:
      #
      #   * A name must contain from 1 to 20 alphanumeric characters or hyphens.
      #
      #   * The first character must be a letter.
      #
      #   * A name cannot end with a hyphen or contain two consecutive hyphens.
      # @option params [required, String] :replication_group_description
      #   A user-created description for the replication group.
      # @option params [String] :primary_cluster_id
      #   The identifier of the cache cluster that will serve as the primary for
      #   this replication group. This cache cluster must already exist and have
      #   a status of *available*.
      #
      #   This parameter is not required if *NumCacheClusters* is specified.
      # @option params [Boolean] :automatic_failover_enabled
      #   Specifies whether a read-only replica will be automatically promoted
      #   to read/write primary if the existing primary fails.
      #
      #   If `true`, Multi-AZ is enabled for this replication group. If `false`,
      #   Multi-AZ is disabled for this replication group.
      #
      #   Default: false
      #
      #   <note markdown="1"> ElastiCache Multi-AZ replication groups is not supported on:
      #
      #    * Redis versions earlier than 2.8.6.
      #
      #   * T1 and T2 cache node types.
      #
      #    </note>
      # @option params [Integer] :num_cache_clusters
      #   The number of cache clusters this replication group will initially
      #   have.
      #
      #   If *Multi-AZ* is `enabled`, the value of this parameter must be at
      #   least 2.
      #
      #   The maximum permitted value for *NumCacheClusters* is 6 (primary plus
      #   5 replicas). If you need to exceed this limit, please fill out the
      #   ElastiCache Limit Increase Request form at
      #   [http://aws.amazon.com/contact-us/elasticache-node-limit-request][1].
      #
      #
      #
      #   [1]: http://aws.amazon.com/contact-us/elasticache-node-limit-request
      # @option params [Array<String>] :preferred_cache_cluster_a_zs
      #   A list of EC2 availability zones in which the replication group\'s
      #   cache clusters will be created. The order of the availability zones in
      #   the list is not important.
      #
      #   <note markdown="1"> If you are creating your replication group in an Amazon VPC
      #   (recommended), you can only locate cache clusters in availability
      #   zones associated with the subnets in the selected subnet group.
      #
      #    The number of availability zones listed must equal the value of
      #   *NumCacheClusters*.
      #
      #    </note>
      #
      #   Default: system chosen availability zones.
      #
      #   Example: One Redis cache cluster in each of three availability zones.
      #
      #   `PreferredAvailabilityZones.member.1=us-west-2a
      #   PreferredAvailabilityZones.member.2=us-west-2c
      #   PreferredAvailabilityZones.member.3=us-west-2c`
      # @option params [String] :cache_node_type
      #   The compute and memory capacity of the nodes in the node group.
      #
      #   Valid node types are as follows:
      #
      #   * General purpose:
      #
      #     * Current generation: `cache.t2.micro`, `cache.t2.small`,
      #       `cache.t2.medium`, `cache.m3.medium`, `cache.m3.large`,
      #       `cache.m3.xlarge`, `cache.m3.2xlarge`
      #
      #     * Previous generation: `cache.t1.micro`, `cache.m1.small`,
      #       `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`
      #
      #   * Compute optimized: `cache.c1.xlarge`
      #
      #   * Memory optimized:
      #
      #     * Current generation: `cache.r3.large`, `cache.r3.xlarge`,
      #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
      #
      #     * Previous generation: `cache.m2.xlarge`, `cache.m2.2xlarge`,
      #       `cache.m2.4xlarge`
      #
      #   **Notes:**
      #
      #   * All t2 instances are created in an Amazon Virtual Private Cloud
      #     (VPC).
      #
      #   * Redis backup/restore is not supported for t2 instances.
      #
      #   * Redis Append-only files (AOF) functionality is not supported for t1
      #     or t2 instances.
      #
      #   For a complete listing of cache node types and specifications, see
      #   [Amazon ElastiCache Product Features and Details][1] and [Cache Node
      #   Type-Specific Parameters for Memcached][2] or [Cache Node
      #   Type-Specific Parameters for Redis][3].
      #
      #
      #
      #   [1]: http://aws.amazon.com/elasticache/details
      #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#CacheParameterGroups.Memcached.NodeSpecific
      #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#CacheParameterGroups.Redis.NodeSpecific
      # @option params [String] :engine
      #   The name of the cache engine to be used for the cache clusters in this
      #   replication group.
      #
      #   Default: redis
      # @option params [String] :engine_version
      #   The version number of the cache engine to be used for the cache
      #   clusters in this replication group. To view the supported cache engine
      #   versions, use the *DescribeCacheEngineVersions* action.
      #
      #   **Important:** You can upgrade to a newer engine version (see
      #   [Selecting a Cache Engine and Version][1]) in the *ElastiCache User
      #   Guide*, but you cannot downgrade to an earlier engine version. If you
      #   want to use an earlier engine version, you must delete the existing
      #   cache cluster or replication group and create it anew with the earlier
      #   engine version.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement
      # @option params [String] :cache_parameter_group_name
      #   The name of the parameter group to associate with this replication
      #   group. If this argument is omitted, the default cache parameter group
      #   for the specified engine is used.
      # @option params [String] :cache_subnet_group_name
      #   The name of the cache subnet group to be used for the replication
      #   group.
      # @option params [Array<String>] :cache_security_group_names
      #   A list of cache security group names to associate with this
      #   replication group.
      # @option params [Array<String>] :security_group_ids
      #   One or more Amazon VPC security groups associated with this
      #   replication group.
      #
      #   Use this parameter only when you are creating a replication group in
      #   an Amazon Virtual Private Cloud (VPC).
      # @option params [Array<Types::Tag>] :tags
      #   A list of cost allocation tags to be added to this resource. A tag is
      #   a key-value pair. A tag key must be accompanied by a tag value.
      # @option params [Array<String>] :snapshot_arns
      #   A single-element string list containing an Amazon Resource Name (ARN)
      #   that uniquely identifies a Redis RDB snapshot file stored in Amazon
      #   S3. The snapshot file will be used to populate the node group. The
      #   Amazon S3 object name in the ARN cannot contain any commas.
      #
      #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
      #
      #    </note>
      #
      #   Example of an Amazon S3 ARN: `arn:aws:s3:::my_bucket/snapshot1.rdb`
      # @option params [String] :snapshot_name
      #   The name of a snapshot from which to restore data into the new node
      #   group. The snapshot status changes to `restoring` while the new node
      #   group is being created.
      #
      #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
      #
      #    </note>
      # @option params [String] :preferred_maintenance_window
      #   Specifies the weekly time range during which maintenance on the cache
      #   cluster is performed. It is specified as a range in the format
      #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
      #   window is a 60 minute period. Valid values for `ddd` are:
      #
      #   * `sun`
      #
      #   * `mon`
      #
      #   * `tue`
      #
      #   * `wed`
      #
      #   * `thu`
      #
      #   * `fri`
      #
      #   * `sat`
      #
      #   Example: `sun:05:00-sun:09:00`
      # @option params [Integer] :port
      #   The port number on which each member of the replication group will
      #   accept connections.
      # @option params [String] :notification_topic_arn
      #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
      #   Service (SNS) topic to which notifications will be sent.
      #
      #   <note markdown="1"> The Amazon SNS topic owner must be the same as the cache cluster
      #   owner.
      #
      #    </note>
      # @option params [Boolean] :auto_minor_version_upgrade
      #   This parameter is currently disabled.
      # @option params [Integer] :snapshot_retention_limit
      #   The number of days for which ElastiCache will retain automatic
      #   snapshots before deleting them. For example, if you set
      #   `SnapshotRetentionLimit` to 5, then a snapshot that was taken today
      #   will be retained for 5 days before being deleted.
      #
      #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
      #
      #    </note>
      #
      #   Default: 0 (i.e., automatic backups are disabled for this cache
      #   cluster).
      # @option params [String] :snapshot_window
      #   The daily time range (in UTC) during which ElastiCache will begin
      #   taking a daily snapshot of your node group.
      #
      #   Example: `05:00-09:00`
      #
      #   If you do not specify this parameter, then ElastiCache will
      #   automatically choose an appropriate time range.
      #
      #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
      #
      #    </note>
      # @return [Types::CreateReplicationGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateReplicationGroupResult#replication_group #ReplicationGroup} => Types::ReplicationGroup
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_replication_group({
      #     replication_group_id: "String", # required
      #     replication_group_description: "String", # required
      #     primary_cluster_id: "String",
      #     automatic_failover_enabled: false,
      #     num_cache_clusters: 1,
      #     preferred_cache_cluster_a_zs: ["String"],
      #     cache_node_type: "String",
      #     engine: "String",
      #     engine_version: "String",
      #     cache_parameter_group_name: "String",
      #     cache_subnet_group_name: "String",
      #     cache_security_group_names: ["String"],
      #     security_group_ids: ["String"],
      #     tags: [
      #       {
      #         key: "String",
      #         value: "String",
      #       },
      #     ],
      #     snapshot_arns: ["String"],
      #     snapshot_name: "String",
      #     preferred_maintenance_window: "String",
      #     port: 1,
      #     notification_topic_arn: "String",
      #     auto_minor_version_upgrade: false,
      #     snapshot_retention_limit: 1,
      #     snapshot_window: "String",
      #   })
      #
      # @example Response structure
      #   resp.replication_group.replication_group_id #=> String
      #   resp.replication_group.description #=> String
      #   resp.replication_group.status #=> String
      #   resp.replication_group.pending_modified_values.primary_cluster_id #=> String
      #   resp.replication_group.pending_modified_values.automatic_failover_status #=> String, one of "enabled", "disabled"
      #   resp.replication_group.member_clusters #=> Array
      #   resp.replication_group.member_clusters[0] #=> String
      #   resp.replication_group.node_groups #=> Array
      #   resp.replication_group.node_groups[0].node_group_id #=> String
      #   resp.replication_group.node_groups[0].status #=> String
      #   resp.replication_group.node_groups[0].primary_endpoint.address #=> String
      #   resp.replication_group.node_groups[0].primary_endpoint.port #=> Integer
      #   resp.replication_group.node_groups[0].node_group_members #=> Array
      #   resp.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
      #   resp.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
      #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.address #=> String
      #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.port #=> Integer
      #   resp.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
      #   resp.replication_group.node_groups[0].node_group_members[0].current_role #=> String
      #   resp.replication_group.snapshotting_cluster_id #=> String
      #   resp.replication_group.automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_replication_group(params = {}, options = {})
        req = build_request(:create_replication_group, params)
        req.send_request(options)
      end

      # The *CreateSnapshot* action creates a copy of an entire cache cluster
      # at a specific moment in time.
      # @option params [required, String] :cache_cluster_id
      #   The identifier of an existing cache cluster. The snapshot will be
      #   created from this cache cluster.
      # @option params [required, String] :snapshot_name
      #   A name for the snapshot being created.
      # @return [Types::CreateSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateSnapshotResult#snapshot #Snapshot} => Types::Snapshot
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_snapshot({
      #     cache_cluster_id: "String", # required
      #     snapshot_name: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.snapshot.snapshot_name #=> String
      #   resp.snapshot.cache_cluster_id #=> String
      #   resp.snapshot.snapshot_status #=> String
      #   resp.snapshot.snapshot_source #=> String
      #   resp.snapshot.cache_node_type #=> String
      #   resp.snapshot.engine #=> String
      #   resp.snapshot.engine_version #=> String
      #   resp.snapshot.num_cache_nodes #=> Integer
      #   resp.snapshot.preferred_availability_zone #=> String
      #   resp.snapshot.cache_cluster_create_time #=> Time
      #   resp.snapshot.preferred_maintenance_window #=> String
      #   resp.snapshot.topic_arn #=> String
      #   resp.snapshot.port #=> Integer
      #   resp.snapshot.cache_parameter_group_name #=> String
      #   resp.snapshot.cache_subnet_group_name #=> String
      #   resp.snapshot.vpc_id #=> String
      #   resp.snapshot.auto_minor_version_upgrade #=> Boolean
      #   resp.snapshot.snapshot_retention_limit #=> Integer
      #   resp.snapshot.snapshot_window #=> String
      #   resp.snapshot.node_snapshots #=> Array
      #   resp.snapshot.node_snapshots[0].cache_node_id #=> String
      #   resp.snapshot.node_snapshots[0].cache_size #=> String
      #   resp.snapshot.node_snapshots[0].cache_node_create_time #=> Time
      #   resp.snapshot.node_snapshots[0].snapshot_create_time #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_snapshot(params = {}, options = {})
        req = build_request(:create_snapshot, params)
        req.send_request(options)
      end

      # The *DeleteCacheCluster* action deletes a previously provisioned cache
      # cluster. *DeleteCacheCluster* deletes all associated cache nodes, node
      # endpoints and the cache cluster itself. When you receive a successful
      # response from this action, Amazon ElastiCache immediately begins
      # deleting the cache cluster; you cannot cancel or revert this action.
      #
      # This API cannot be used to delete a cache cluster that is the last
      # read replica of a replication group that has Multi-AZ mode enabled.
      # @option params [required, String] :cache_cluster_id
      #   The cache cluster identifier for the cluster to be deleted. This
      #   parameter is not case sensitive.
      # @option params [String] :final_snapshot_identifier
      #   The user-supplied name of a final cache cluster snapshot. This is the
      #   unique name that identifies the snapshot. ElastiCache creates the
      #   snapshot, and then deletes the cache cluster immediately afterward.
      # @return [Types::DeleteCacheClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteCacheClusterResult#cache_cluster #CacheCluster} => Types::CacheCluster
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_cache_cluster({
      #     cache_cluster_id: "String", # required
      #     final_snapshot_identifier: "String",
      #   })
      #
      # @example Response structure
      #   resp.cache_cluster.cache_cluster_id #=> String
      #   resp.cache_cluster.configuration_endpoint.address #=> String
      #   resp.cache_cluster.configuration_endpoint.port #=> Integer
      #   resp.cache_cluster.client_download_landing_page #=> String
      #   resp.cache_cluster.cache_node_type #=> String
      #   resp.cache_cluster.engine #=> String
      #   resp.cache_cluster.engine_version #=> String
      #   resp.cache_cluster.cache_cluster_status #=> String
      #   resp.cache_cluster.num_cache_nodes #=> Integer
      #   resp.cache_cluster.preferred_availability_zone #=> String
      #   resp.cache_cluster.cache_cluster_create_time #=> Time
      #   resp.cache_cluster.preferred_maintenance_window #=> String
      #   resp.cache_cluster.pending_modified_values.num_cache_nodes #=> Integer
      #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove #=> Array
      #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove[0] #=> String
      #   resp.cache_cluster.pending_modified_values.engine_version #=> String
      #   resp.cache_cluster.pending_modified_values.cache_node_type #=> String
      #   resp.cache_cluster.notification_configuration.topic_arn #=> String
      #   resp.cache_cluster.notification_configuration.topic_status #=> String
      #   resp.cache_cluster.cache_security_groups #=> Array
      #   resp.cache_cluster.cache_security_groups[0].cache_security_group_name #=> String
      #   resp.cache_cluster.cache_security_groups[0].status #=> String
      #   resp.cache_cluster.cache_parameter_group.cache_parameter_group_name #=> String
      #   resp.cache_cluster.cache_parameter_group.parameter_apply_status #=> String
      #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot #=> Array
      #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot[0] #=> String
      #   resp.cache_cluster.cache_subnet_group_name #=> String
      #   resp.cache_cluster.cache_nodes #=> Array
      #   resp.cache_cluster.cache_nodes[0].cache_node_id #=> String
      #   resp.cache_cluster.cache_nodes[0].cache_node_status #=> String
      #   resp.cache_cluster.cache_nodes[0].cache_node_create_time #=> Time
      #   resp.cache_cluster.cache_nodes[0].endpoint.address #=> String
      #   resp.cache_cluster.cache_nodes[0].endpoint.port #=> Integer
      #   resp.cache_cluster.cache_nodes[0].parameter_group_status #=> String
      #   resp.cache_cluster.cache_nodes[0].source_cache_node_id #=> String
      #   resp.cache_cluster.cache_nodes[0].customer_availability_zone #=> String
      #   resp.cache_cluster.auto_minor_version_upgrade #=> Boolean
      #   resp.cache_cluster.security_groups #=> Array
      #   resp.cache_cluster.security_groups[0].security_group_id #=> String
      #   resp.cache_cluster.security_groups[0].status #=> String
      #   resp.cache_cluster.replication_group_id #=> String
      #   resp.cache_cluster.snapshot_retention_limit #=> Integer
      #   resp.cache_cluster.snapshot_window #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_cache_cluster(params = {}, options = {})
        req = build_request(:delete_cache_cluster, params)
        req.send_request(options)
      end

      # The *DeleteCacheParameterGroup* action deletes the specified cache
      # parameter group. You cannot delete a cache parameter group if it is
      # associated with any cache clusters.
      # @option params [required, String] :cache_parameter_group_name
      #   The name of the cache parameter group to delete.
      #
      #   <note markdown="1"> The specified cache security group must not be associated with any
      #   cache clusters.
      #
      #    </note>
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_cache_parameter_group({
      #     cache_parameter_group_name: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_cache_parameter_group(params = {}, options = {})
        req = build_request(:delete_cache_parameter_group, params)
        req.send_request(options)
      end

      # The *DeleteCacheSecurityGroup* action deletes a cache security group.
      #
      # <note markdown="1"> You cannot delete a cache security group if it is associated with any
      # cache clusters.
      #
      #  </note>
      # @option params [required, String] :cache_security_group_name
      #   The name of the cache security group to delete.
      #
      #   <note markdown="1"> You cannot delete the default security group.
      #
      #    </note>
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_cache_security_group({
      #     cache_security_group_name: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_cache_security_group(params = {}, options = {})
        req = build_request(:delete_cache_security_group, params)
        req.send_request(options)
      end

      # The *DeleteCacheSubnetGroup* action deletes a cache subnet group.
      #
      # <note markdown="1"> You cannot delete a cache subnet group if it is associated with any
      # cache clusters.
      #
      #  </note>
      # @option params [required, String] :cache_subnet_group_name
      #   The name of the cache subnet group to delete.
      #
      #   Constraints: Must contain no more than 255 alphanumeric characters or
      #   hyphens.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_cache_subnet_group({
      #     cache_subnet_group_name: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_cache_subnet_group(params = {}, options = {})
        req = build_request(:delete_cache_subnet_group, params)
        req.send_request(options)
      end

      # The *DeleteReplicationGroup* action deletes an existing replication
      # group. By default, this action deletes the entire replication group,
      # including the primary cluster and all of the read replicas. You can
      # optionally delete only the read replicas, while retaining the primary
      # cluster.
      #
      # When you receive a successful response from this action, Amazon
      # ElastiCache immediately begins deleting the selected resources; you
      # cannot cancel or revert this action.
      # @option params [required, String] :replication_group_id
      #   The identifier for the cluster to be deleted. This parameter is not
      #   case sensitive.
      # @option params [Boolean] :retain_primary_cluster
      #   If set to *true*, all of the read replicas will be deleted, but the
      #   primary node will be retained.
      # @option params [String] :final_snapshot_identifier
      #   The name of a final node group snapshot. ElastiCache creates the
      #   snapshot from the primary node in the cluster, rather than one of the
      #   replicas; this is to ensure that it captures the freshest data. After
      #   the final snapshot is taken, the cluster is immediately deleted.
      # @return [Types::DeleteReplicationGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteReplicationGroupResult#replication_group #ReplicationGroup} => Types::ReplicationGroup
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_replication_group({
      #     replication_group_id: "String", # required
      #     retain_primary_cluster: false,
      #     final_snapshot_identifier: "String",
      #   })
      #
      # @example Response structure
      #   resp.replication_group.replication_group_id #=> String
      #   resp.replication_group.description #=> String
      #   resp.replication_group.status #=> String
      #   resp.replication_group.pending_modified_values.primary_cluster_id #=> String
      #   resp.replication_group.pending_modified_values.automatic_failover_status #=> String, one of "enabled", "disabled"
      #   resp.replication_group.member_clusters #=> Array
      #   resp.replication_group.member_clusters[0] #=> String
      #   resp.replication_group.node_groups #=> Array
      #   resp.replication_group.node_groups[0].node_group_id #=> String
      #   resp.replication_group.node_groups[0].status #=> String
      #   resp.replication_group.node_groups[0].primary_endpoint.address #=> String
      #   resp.replication_group.node_groups[0].primary_endpoint.port #=> Integer
      #   resp.replication_group.node_groups[0].node_group_members #=> Array
      #   resp.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
      #   resp.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
      #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.address #=> String
      #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.port #=> Integer
      #   resp.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
      #   resp.replication_group.node_groups[0].node_group_members[0].current_role #=> String
      #   resp.replication_group.snapshotting_cluster_id #=> String
      #   resp.replication_group.automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_replication_group(params = {}, options = {})
        req = build_request(:delete_replication_group, params)
        req.send_request(options)
      end

      # The *DeleteSnapshot* action deletes an existing snapshot. When you
      # receive a successful response from this action, ElastiCache
      # immediately begins deleting the snapshot; you cannot cancel or revert
      # this action.
      # @option params [required, String] :snapshot_name
      #   The name of the snapshot to be deleted.
      # @return [Types::DeleteSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteSnapshotResult#snapshot #Snapshot} => Types::Snapshot
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_snapshot({
      #     snapshot_name: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.snapshot.snapshot_name #=> String
      #   resp.snapshot.cache_cluster_id #=> String
      #   resp.snapshot.snapshot_status #=> String
      #   resp.snapshot.snapshot_source #=> String
      #   resp.snapshot.cache_node_type #=> String
      #   resp.snapshot.engine #=> String
      #   resp.snapshot.engine_version #=> String
      #   resp.snapshot.num_cache_nodes #=> Integer
      #   resp.snapshot.preferred_availability_zone #=> String
      #   resp.snapshot.cache_cluster_create_time #=> Time
      #   resp.snapshot.preferred_maintenance_window #=> String
      #   resp.snapshot.topic_arn #=> String
      #   resp.snapshot.port #=> Integer
      #   resp.snapshot.cache_parameter_group_name #=> String
      #   resp.snapshot.cache_subnet_group_name #=> String
      #   resp.snapshot.vpc_id #=> String
      #   resp.snapshot.auto_minor_version_upgrade #=> Boolean
      #   resp.snapshot.snapshot_retention_limit #=> Integer
      #   resp.snapshot.snapshot_window #=> String
      #   resp.snapshot.node_snapshots #=> Array
      #   resp.snapshot.node_snapshots[0].cache_node_id #=> String
      #   resp.snapshot.node_snapshots[0].cache_size #=> String
      #   resp.snapshot.node_snapshots[0].cache_node_create_time #=> Time
      #   resp.snapshot.node_snapshots[0].snapshot_create_time #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_snapshot(params = {}, options = {})
        req = build_request(:delete_snapshot, params)
        req.send_request(options)
      end

      # The *DescribeCacheClusters* action returns information about all
      # provisioned cache clusters if no cache cluster identifier is
      # specified, or about a specific cache cluster if a cache cluster
      # identifier is supplied.
      #
      # By default, abbreviated information about the cache clusters(s) will
      # be returned. You can use the optional *ShowDetails* flag to retrieve
      # detailed information about the cache nodes associated with the cache
      # clusters. These details include the DNS address and port for the cache
      # node endpoint.
      #
      # If the cluster is in the CREATING state, only cluster level
      # information will be displayed until all of the nodes are successfully
      # provisioned.
      #
      # If the cluster is in the DELETING state, only cluster level
      # information will be displayed.
      #
      # If cache nodes are currently being added to the cache cluster, node
      # endpoint information and creation time for the additional nodes will
      # not be displayed until they are completely provisioned. When the cache
      # cluster state is *available*, the cluster is ready for use.
      #
      # If cache nodes are currently being removed from the cache cluster, no
      # endpoint information for the removed nodes is displayed.
      # @option params [String] :cache_cluster_id
      #   The user-supplied cluster identifier. If this parameter is specified,
      #   only information about that specific cache cluster is returned. This
      #   parameter isn\'t case sensitive.
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a marker is
      #   included in the response so that the remaining results can be
      #   retrieved.
      #
      #   Default: 100
      #
      #   Constraints: minimum 20; maximum 100.
      # @option params [String] :marker
      #   An optional marker returned from a prior request. Use this marker for
      #   pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up to
      #   the value specified by *MaxRecords*.
      # @option params [Boolean] :show_cache_node_info
      #   An optional flag that can be included in the DescribeCacheCluster
      #   request to retrieve information about the individual cache nodes.
      # @return [Types::CacheClusterMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CacheClusterMessage#marker #Marker} => String
      #   * {Types::CacheClusterMessage#cache_clusters #CacheClusters} => Array&lt;Types::CacheCluster&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_cache_clusters({
      #     cache_cluster_id: "String",
      #     max_records: 1,
      #     marker: "String",
      #     show_cache_node_info: false,
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.cache_clusters #=> Array
      #   resp.cache_clusters[0].cache_cluster_id #=> String
      #   resp.cache_clusters[0].configuration_endpoint.address #=> String
      #   resp.cache_clusters[0].configuration_endpoint.port #=> Integer
      #   resp.cache_clusters[0].client_download_landing_page #=> String
      #   resp.cache_clusters[0].cache_node_type #=> String
      #   resp.cache_clusters[0].engine #=> String
      #   resp.cache_clusters[0].engine_version #=> String
      #   resp.cache_clusters[0].cache_cluster_status #=> String
      #   resp.cache_clusters[0].num_cache_nodes #=> Integer
      #   resp.cache_clusters[0].preferred_availability_zone #=> String
      #   resp.cache_clusters[0].cache_cluster_create_time #=> Time
      #   resp.cache_clusters[0].preferred_maintenance_window #=> String
      #   resp.cache_clusters[0].pending_modified_values.num_cache_nodes #=> Integer
      #   resp.cache_clusters[0].pending_modified_values.cache_node_ids_to_remove #=> Array
      #   resp.cache_clusters[0].pending_modified_values.cache_node_ids_to_remove[0] #=> String
      #   resp.cache_clusters[0].pending_modified_values.engine_version #=> String
      #   resp.cache_clusters[0].pending_modified_values.cache_node_type #=> String
      #   resp.cache_clusters[0].notification_configuration.topic_arn #=> String
      #   resp.cache_clusters[0].notification_configuration.topic_status #=> String
      #   resp.cache_clusters[0].cache_security_groups #=> Array
      #   resp.cache_clusters[0].cache_security_groups[0].cache_security_group_name #=> String
      #   resp.cache_clusters[0].cache_security_groups[0].status #=> String
      #   resp.cache_clusters[0].cache_parameter_group.cache_parameter_group_name #=> String
      #   resp.cache_clusters[0].cache_parameter_group.parameter_apply_status #=> String
      #   resp.cache_clusters[0].cache_parameter_group.cache_node_ids_to_reboot #=> Array
      #   resp.cache_clusters[0].cache_parameter_group.cache_node_ids_to_reboot[0] #=> String
      #   resp.cache_clusters[0].cache_subnet_group_name #=> String
      #   resp.cache_clusters[0].cache_nodes #=> Array
      #   resp.cache_clusters[0].cache_nodes[0].cache_node_id #=> String
      #   resp.cache_clusters[0].cache_nodes[0].cache_node_status #=> String
      #   resp.cache_clusters[0].cache_nodes[0].cache_node_create_time #=> Time
      #   resp.cache_clusters[0].cache_nodes[0].endpoint.address #=> String
      #   resp.cache_clusters[0].cache_nodes[0].endpoint.port #=> Integer
      #   resp.cache_clusters[0].cache_nodes[0].parameter_group_status #=> String
      #   resp.cache_clusters[0].cache_nodes[0].source_cache_node_id #=> String
      #   resp.cache_clusters[0].cache_nodes[0].customer_availability_zone #=> String
      #   resp.cache_clusters[0].auto_minor_version_upgrade #=> Boolean
      #   resp.cache_clusters[0].security_groups #=> Array
      #   resp.cache_clusters[0].security_groups[0].security_group_id #=> String
      #   resp.cache_clusters[0].security_groups[0].status #=> String
      #   resp.cache_clusters[0].replication_group_id #=> String
      #   resp.cache_clusters[0].snapshot_retention_limit #=> Integer
      #   resp.cache_clusters[0].snapshot_window #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_cache_clusters(params = {}, options = {})
        req = build_request(:describe_cache_clusters, params)
        req.send_request(options)
      end

      # The *DescribeCacheEngineVersions* action returns a list of the
      # available cache engines and their versions.
      # @option params [String] :engine
      #   The cache engine to return. Valid values: `memcached` \| `redis`
      # @option params [String] :engine_version
      #   The cache engine version to return.
      #
      #   Example: `1.4.14`
      # @option params [String] :cache_parameter_group_family
      #   The name of a specific cache parameter group family to return details
      #   for.
      #
      #   Constraints:
      #
      #   * Must be 1 to 255 alphanumeric characters
      #
      #   * First character must be a letter
      #
      #   * Cannot end with a hyphen or contain two consecutive hyphens
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a marker is
      #   included in the response so that the remaining results can be
      #   retrieved.
      #
      #   Default: 100
      #
      #   Constraints: minimum 20; maximum 100.
      # @option params [String] :marker
      #   An optional marker returned from a prior request. Use this marker for
      #   pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up to
      #   the value specified by *MaxRecords*.
      # @option params [Boolean] :default_only
      #   If *true*, specifies that only the default version of the specified
      #   engine or engine and major version combination is to be returned.
      # @return [Types::CacheEngineVersionMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CacheEngineVersionMessage#marker #Marker} => String
      #   * {Types::CacheEngineVersionMessage#cache_engine_versions #CacheEngineVersions} => Array&lt;Types::CacheEngineVersion&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_cache_engine_versions({
      #     engine: "String",
      #     engine_version: "String",
      #     cache_parameter_group_family: "String",
      #     max_records: 1,
      #     marker: "String",
      #     default_only: false,
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.cache_engine_versions #=> Array
      #   resp.cache_engine_versions[0].engine #=> String
      #   resp.cache_engine_versions[0].engine_version #=> String
      #   resp.cache_engine_versions[0].cache_parameter_group_family #=> String
      #   resp.cache_engine_versions[0].cache_engine_description #=> String
      #   resp.cache_engine_versions[0].cache_engine_version_description #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_cache_engine_versions(params = {}, options = {})
        req = build_request(:describe_cache_engine_versions, params)
        req.send_request(options)
      end

      # The *DescribeCacheParameterGroups* action returns a list of cache
      # parameter group descriptions. If a cache parameter group name is
      # specified, the list will contain only the descriptions for that group.
      # @option params [String] :cache_parameter_group_name
      #   The name of a specific cache parameter group to return details for.
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a marker is
      #   included in the response so that the remaining results can be
      #   retrieved.
      #
      #   Default: 100
      #
      #   Constraints: minimum 20; maximum 100.
      # @option params [String] :marker
      #   An optional marker returned from a prior request. Use this marker for
      #   pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up to
      #   the value specified by *MaxRecords*.
      # @return [Types::CacheParameterGroupsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CacheParameterGroupsMessage#marker #Marker} => String
      #   * {Types::CacheParameterGroupsMessage#cache_parameter_groups #CacheParameterGroups} => Array&lt;Types::CacheParameterGroup&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_cache_parameter_groups({
      #     cache_parameter_group_name: "String",
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.cache_parameter_groups #=> Array
      #   resp.cache_parameter_groups[0].cache_parameter_group_name #=> String
      #   resp.cache_parameter_groups[0].cache_parameter_group_family #=> String
      #   resp.cache_parameter_groups[0].description #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_cache_parameter_groups(params = {}, options = {})
        req = build_request(:describe_cache_parameter_groups, params)
        req.send_request(options)
      end

      # The *DescribeCacheParameters* action returns the detailed parameter
      # list for a particular cache parameter group.
      # @option params [required, String] :cache_parameter_group_name
      #   The name of a specific cache parameter group to return details for.
      # @option params [String] :source
      #   The parameter types to return.
      #
      #   Valid values: `user` \| `system` \| `engine-default`
      # @option params [Integer] :max_records
      #   The maximum number of brecords to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a marker is
      #   included in the response so that the remaining results can be
      #   retrieved.
      #
      #   Default: 100
      #
      #   Constraints: minimum 20; maximum 100.
      # @option params [String] :marker
      #   An optional marker returned from a prior request. Use this marker for
      #   pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up to
      #   the value specified by *MaxRecords*.
      # @return [Types::CacheParameterGroupDetails] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CacheParameterGroupDetails#marker #Marker} => String
      #   * {Types::CacheParameterGroupDetails#parameters #Parameters} => Array&lt;Types::Parameter&gt;
      #   * {Types::CacheParameterGroupDetails#cache_node_type_specific_parameters #CacheNodeTypeSpecificParameters} => Array&lt;Types::CacheNodeTypeSpecificParameter&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_cache_parameters({
      #     cache_parameter_group_name: "String", # required
      #     source: "String",
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.parameters #=> Array
      #   resp.parameters[0].parameter_name #=> String
      #   resp.parameters[0].parameter_value #=> String
      #   resp.parameters[0].description #=> String
      #   resp.parameters[0].source #=> String
      #   resp.parameters[0].data_type #=> String
      #   resp.parameters[0].allowed_values #=> String
      #   resp.parameters[0].is_modifiable #=> Boolean
      #   resp.parameters[0].minimum_engine_version #=> String
      #   resp.parameters[0].change_type #=> String, one of "immediate", "requires-reboot"
      #   resp.cache_node_type_specific_parameters #=> Array
      #   resp.cache_node_type_specific_parameters[0].parameter_name #=> String
      #   resp.cache_node_type_specific_parameters[0].description #=> String
      #   resp.cache_node_type_specific_parameters[0].source #=> String
      #   resp.cache_node_type_specific_parameters[0].data_type #=> String
      #   resp.cache_node_type_specific_parameters[0].allowed_values #=> String
      #   resp.cache_node_type_specific_parameters[0].is_modifiable #=> Boolean
      #   resp.cache_node_type_specific_parameters[0].minimum_engine_version #=> String
      #   resp.cache_node_type_specific_parameters[0].cache_node_type_specific_values #=> Array
      #   resp.cache_node_type_specific_parameters[0].cache_node_type_specific_values[0].cache_node_type #=> String
      #   resp.cache_node_type_specific_parameters[0].cache_node_type_specific_values[0].value #=> String
      #   resp.cache_node_type_specific_parameters[0].change_type #=> String, one of "immediate", "requires-reboot"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_cache_parameters(params = {}, options = {})
        req = build_request(:describe_cache_parameters, params)
        req.send_request(options)
      end

      # The *DescribeCacheSecurityGroups* action returns a list of cache
      # security group descriptions. If a cache security group name is
      # specified, the list will contain only the description of that group.
      # @option params [String] :cache_security_group_name
      #   The name of the cache security group to return details for.
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a marker is
      #   included in the response so that the remaining results can be
      #   retrieved.
      #
      #   Default: 100
      #
      #   Constraints: minimum 20; maximum 100.
      # @option params [String] :marker
      #   An optional marker returned from a prior request. Use this marker for
      #   pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up to
      #   the value specified by *MaxRecords*.
      # @return [Types::CacheSecurityGroupMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CacheSecurityGroupMessage#marker #Marker} => String
      #   * {Types::CacheSecurityGroupMessage#cache_security_groups #CacheSecurityGroups} => Array&lt;Types::CacheSecurityGroup&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_cache_security_groups({
      #     cache_security_group_name: "String",
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.cache_security_groups #=> Array
      #   resp.cache_security_groups[0].owner_id #=> String
      #   resp.cache_security_groups[0].cache_security_group_name #=> String
      #   resp.cache_security_groups[0].description #=> String
      #   resp.cache_security_groups[0].ec2_security_groups #=> Array
      #   resp.cache_security_groups[0].ec2_security_groups[0].status #=> String
      #   resp.cache_security_groups[0].ec2_security_groups[0].ec2_security_group_name #=> String
      #   resp.cache_security_groups[0].ec2_security_groups[0].ec2_security_group_owner_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_cache_security_groups(params = {}, options = {})
        req = build_request(:describe_cache_security_groups, params)
        req.send_request(options)
      end

      # The *DescribeCacheSubnetGroups* action returns a list of cache subnet
      # group descriptions. If a subnet group name is specified, the list will
      # contain only the description of that group.
      # @option params [String] :cache_subnet_group_name
      #   The name of the cache subnet group to return details for.
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a marker is
      #   included in the response so that the remaining results can be
      #   retrieved.
      #
      #   Default: 100
      #
      #   Constraints: minimum 20; maximum 100.
      # @option params [String] :marker
      #   An optional marker returned from a prior request. Use this marker for
      #   pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up to
      #   the value specified by *MaxRecords*.
      # @return [Types::CacheSubnetGroupMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CacheSubnetGroupMessage#marker #Marker} => String
      #   * {Types::CacheSubnetGroupMessage#cache_subnet_groups #CacheSubnetGroups} => Array&lt;Types::CacheSubnetGroup&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_cache_subnet_groups({
      #     cache_subnet_group_name: "String",
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.cache_subnet_groups #=> Array
      #   resp.cache_subnet_groups[0].cache_subnet_group_name #=> String
      #   resp.cache_subnet_groups[0].cache_subnet_group_description #=> String
      #   resp.cache_subnet_groups[0].vpc_id #=> String
      #   resp.cache_subnet_groups[0].subnets #=> Array
      #   resp.cache_subnet_groups[0].subnets[0].subnet_identifier #=> String
      #   resp.cache_subnet_groups[0].subnets[0].subnet_availability_zone.name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_cache_subnet_groups(params = {}, options = {})
        req = build_request(:describe_cache_subnet_groups, params)
        req.send_request(options)
      end

      # The *DescribeEngineDefaultParameters* action returns the default
      # engine and system parameter information for the specified cache
      # engine.
      # @option params [required, String] :cache_parameter_group_family
      #   The name of the cache parameter group family. Valid values are:
      #   `memcached1.4` \| `redis2.6` \| `redis2.8`
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a marker is
      #   included in the response so that the remaining results can be
      #   retrieved.
      #
      #   Default: 100
      #
      #   Constraints: minimum 20; maximum 100.
      # @option params [String] :marker
      #   An optional marker returned from a prior request. Use this marker for
      #   pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up to
      #   the value specified by *MaxRecords*.
      # @return [Types::DescribeEngineDefaultParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeEngineDefaultParametersResult#engine_defaults #EngineDefaults} => Types::EngineDefaults
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_engine_default_parameters({
      #     cache_parameter_group_family: "String", # required
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.engine_defaults.cache_parameter_group_family #=> String
      #   resp.engine_defaults.marker #=> String
      #   resp.engine_defaults.parameters #=> Array
      #   resp.engine_defaults.parameters[0].parameter_name #=> String
      #   resp.engine_defaults.parameters[0].parameter_value #=> String
      #   resp.engine_defaults.parameters[0].description #=> String
      #   resp.engine_defaults.parameters[0].source #=> String
      #   resp.engine_defaults.parameters[0].data_type #=> String
      #   resp.engine_defaults.parameters[0].allowed_values #=> String
      #   resp.engine_defaults.parameters[0].is_modifiable #=> Boolean
      #   resp.engine_defaults.parameters[0].minimum_engine_version #=> String
      #   resp.engine_defaults.parameters[0].change_type #=> String, one of "immediate", "requires-reboot"
      #   resp.engine_defaults.cache_node_type_specific_parameters #=> Array
      #   resp.engine_defaults.cache_node_type_specific_parameters[0].parameter_name #=> String
      #   resp.engine_defaults.cache_node_type_specific_parameters[0].description #=> String
      #   resp.engine_defaults.cache_node_type_specific_parameters[0].source #=> String
      #   resp.engine_defaults.cache_node_type_specific_parameters[0].data_type #=> String
      #   resp.engine_defaults.cache_node_type_specific_parameters[0].allowed_values #=> String
      #   resp.engine_defaults.cache_node_type_specific_parameters[0].is_modifiable #=> Boolean
      #   resp.engine_defaults.cache_node_type_specific_parameters[0].minimum_engine_version #=> String
      #   resp.engine_defaults.cache_node_type_specific_parameters[0].cache_node_type_specific_values #=> Array
      #   resp.engine_defaults.cache_node_type_specific_parameters[0].cache_node_type_specific_values[0].cache_node_type #=> String
      #   resp.engine_defaults.cache_node_type_specific_parameters[0].cache_node_type_specific_values[0].value #=> String
      #   resp.engine_defaults.cache_node_type_specific_parameters[0].change_type #=> String, one of "immediate", "requires-reboot"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_engine_default_parameters(params = {}, options = {})
        req = build_request(:describe_engine_default_parameters, params)
        req.send_request(options)
      end

      # The *DescribeEvents* action returns events related to cache clusters,
      # cache security groups, and cache parameter groups. You can obtain
      # events specific to a particular cache cluster, cache security group,
      # or cache parameter group by providing the name as a parameter.
      #
      # By default, only the events occurring within the last hour are
      # returned; however, you can retrieve up to 14 days\' worth of events if
      # necessary.
      # @option params [String] :source_identifier
      #   The identifier of the event source for which events will be returned.
      #   If not specified, then all sources are included in the response.
      # @option params [String] :source_type
      #   The event source to retrieve events for. If no value is specified, all
      #   events are returned.
      #
      #   Valid values are: `cache-cluster` \| `cache-parameter-group` \|
      #   `cache-security-group` \| `cache-subnet-group`
      # @option params [Time,DateTime,Date,Integer,String] :start_time
      #   The beginning of the time interval to retrieve events for, specified
      #   in ISO 8601 format.
      # @option params [Time,DateTime,Date,Integer,String] :end_time
      #   The end of the time interval for which to retrieve events, specified
      #   in ISO 8601 format.
      # @option params [Integer] :duration
      #   The number of minutes\' worth of events to retrieve.
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a marker is
      #   included in the response so that the remaining results can be
      #   retrieved.
      #
      #   Default: 100
      #
      #   Constraints: minimum 20; maximum 100.
      # @option params [String] :marker
      #   An optional marker returned from a prior request. Use this marker for
      #   pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up to
      #   the value specified by *MaxRecords*.
      # @return [Types::EventsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::EventsMessage#marker #Marker} => String
      #   * {Types::EventsMessage#events #Events} => Array&lt;Types::Event&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_events({
      #     source_identifier: "String",
      #     source_type: "cache-cluster", # accepts cache-cluster, cache-parameter-group, cache-security-group, cache-subnet-group
      #     start_time: Time.now,
      #     end_time: Time.now,
      #     duration: 1,
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.events #=> Array
      #   resp.events[0].source_identifier #=> String
      #   resp.events[0].source_type #=> String, one of "cache-cluster", "cache-parameter-group", "cache-security-group", "cache-subnet-group"
      #   resp.events[0].message #=> String
      #   resp.events[0].date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_events(params = {}, options = {})
        req = build_request(:describe_events, params)
        req.send_request(options)
      end

      # The *DescribeReplicationGroups* action returns information about a
      # particular replication group. If no identifier is specified,
      # *DescribeReplicationGroups* returns information about all replication
      # groups.
      # @option params [String] :replication_group_id
      #   The identifier for the replication group to be described. This
      #   parameter is not case sensitive.
      #
      #   If you do not specify this parameter, information about all
      #   replication groups is returned.
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a marker is
      #   included in the response so that the remaining results can be
      #   retrieved.
      #
      #   Default: 100
      #
      #   Constraints: minimum 20; maximum 100.
      # @option params [String] :marker
      #   An optional marker returned from a prior request. Use this marker for
      #   pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up to
      #   the value specified by *MaxRecords*.
      # @return [Types::ReplicationGroupMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ReplicationGroupMessage#marker #Marker} => String
      #   * {Types::ReplicationGroupMessage#replication_groups #ReplicationGroups} => Array&lt;Types::ReplicationGroup&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_replication_groups({
      #     replication_group_id: "String",
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.replication_groups #=> Array
      #   resp.replication_groups[0].replication_group_id #=> String
      #   resp.replication_groups[0].description #=> String
      #   resp.replication_groups[0].status #=> String
      #   resp.replication_groups[0].pending_modified_values.primary_cluster_id #=> String
      #   resp.replication_groups[0].pending_modified_values.automatic_failover_status #=> String, one of "enabled", "disabled"
      #   resp.replication_groups[0].member_clusters #=> Array
      #   resp.replication_groups[0].member_clusters[0] #=> String
      #   resp.replication_groups[0].node_groups #=> Array
      #   resp.replication_groups[0].node_groups[0].node_group_id #=> String
      #   resp.replication_groups[0].node_groups[0].status #=> String
      #   resp.replication_groups[0].node_groups[0].primary_endpoint.address #=> String
      #   resp.replication_groups[0].node_groups[0].primary_endpoint.port #=> Integer
      #   resp.replication_groups[0].node_groups[0].node_group_members #=> Array
      #   resp.replication_groups[0].node_groups[0].node_group_members[0].cache_cluster_id #=> String
      #   resp.replication_groups[0].node_groups[0].node_group_members[0].cache_node_id #=> String
      #   resp.replication_groups[0].node_groups[0].node_group_members[0].read_endpoint.address #=> String
      #   resp.replication_groups[0].node_groups[0].node_group_members[0].read_endpoint.port #=> Integer
      #   resp.replication_groups[0].node_groups[0].node_group_members[0].preferred_availability_zone #=> String
      #   resp.replication_groups[0].node_groups[0].node_group_members[0].current_role #=> String
      #   resp.replication_groups[0].snapshotting_cluster_id #=> String
      #   resp.replication_groups[0].automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_replication_groups(params = {}, options = {})
        req = build_request(:describe_replication_groups, params)
        req.send_request(options)
      end

      # The *DescribeReservedCacheNodes* action returns information about
      # reserved cache nodes for this account, or about a specified reserved
      # cache node.
      # @option params [String] :reserved_cache_node_id
      #   The reserved cache node identifier filter value. Use this parameter to
      #   show only the reservation that matches the specified reservation ID.
      # @option params [String] :reserved_cache_nodes_offering_id
      #   The offering identifier filter value. Use this parameter to show only
      #   purchased reservations matching the specified offering identifier.
      # @option params [String] :cache_node_type
      #   The cache node type filter value. Use this parameter to show only
      #   those reservations matching the specified cache node type.
      #
      #   Valid node types are as follows:
      #
      #   * General purpose:
      #
      #     * Current generation: `cache.t2.micro`, `cache.t2.small`,
      #       `cache.t2.medium`, `cache.m3.medium`, `cache.m3.large`,
      #       `cache.m3.xlarge`, `cache.m3.2xlarge`
      #
      #     * Previous generation: `cache.t1.micro`, `cache.m1.small`,
      #       `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`
      #
      #   * Compute optimized: `cache.c1.xlarge`
      #
      #   * Memory optimized:
      #
      #     * Current generation: `cache.r3.large`, `cache.r3.xlarge`,
      #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
      #
      #     * Previous generation: `cache.m2.xlarge`, `cache.m2.2xlarge`,
      #       `cache.m2.4xlarge`
      #
      #   **Notes:**
      #
      #   * All t2 instances are created in an Amazon Virtual Private Cloud
      #     (VPC).
      #
      #   * Redis backup/restore is not supported for t2 instances.
      #
      #   * Redis Append-only files (AOF) functionality is not supported for t1
      #     or t2 instances.
      #
      #   For a complete listing of cache node types and specifications, see
      #   [Amazon ElastiCache Product Features and Details][1] and [Cache Node
      #   Type-Specific Parameters for Memcached][2] or [Cache Node
      #   Type-Specific Parameters for Redis][3].
      #
      #
      #
      #   [1]: http://aws.amazon.com/elasticache/details
      #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#CacheParameterGroups.Memcached.NodeSpecific
      #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#CacheParameterGroups.Redis.NodeSpecific
      # @option params [String] :duration
      #   The duration filter value, specified in years or seconds. Use this
      #   parameter to show only reservations for this duration.
      #
      #   Valid Values: `1 | 3 | 31536000 | 94608000`
      # @option params [String] :product_description
      #   The product description filter value. Use this parameter to show only
      #   those reservations matching the specified product description.
      # @option params [String] :offering_type
      #   The offering type filter value. Use this parameter to show only the
      #   available offerings matching the specified offering type.
      #
      #   Valid values: `"Light Utilization"|"Medium Utilization"|"Heavy
      #   Utilization"`
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a marker is
      #   included in the response so that the remaining results can be
      #   retrieved.
      #
      #   Default: 100
      #
      #   Constraints: minimum 20; maximum 100.
      # @option params [String] :marker
      #   An optional marker returned from a prior request. Use this marker for
      #   pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up to
      #   the value specified by *MaxRecords*.
      # @return [Types::ReservedCacheNodeMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ReservedCacheNodeMessage#marker #Marker} => String
      #   * {Types::ReservedCacheNodeMessage#reserved_cache_nodes #ReservedCacheNodes} => Array&lt;Types::ReservedCacheNode&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_reserved_cache_nodes({
      #     reserved_cache_node_id: "String",
      #     reserved_cache_nodes_offering_id: "String",
      #     cache_node_type: "String",
      #     duration: "String",
      #     product_description: "String",
      #     offering_type: "String",
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.reserved_cache_nodes #=> Array
      #   resp.reserved_cache_nodes[0].reserved_cache_node_id #=> String
      #   resp.reserved_cache_nodes[0].reserved_cache_nodes_offering_id #=> String
      #   resp.reserved_cache_nodes[0].cache_node_type #=> String
      #   resp.reserved_cache_nodes[0].start_time #=> Time
      #   resp.reserved_cache_nodes[0].duration #=> Integer
      #   resp.reserved_cache_nodes[0].fixed_price #=> Float
      #   resp.reserved_cache_nodes[0].usage_price #=> Float
      #   resp.reserved_cache_nodes[0].cache_node_count #=> Integer
      #   resp.reserved_cache_nodes[0].product_description #=> String
      #   resp.reserved_cache_nodes[0].offering_type #=> String
      #   resp.reserved_cache_nodes[0].state #=> String
      #   resp.reserved_cache_nodes[0].recurring_charges #=> Array
      #   resp.reserved_cache_nodes[0].recurring_charges[0].recurring_charge_amount #=> Float
      #   resp.reserved_cache_nodes[0].recurring_charges[0].recurring_charge_frequency #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_reserved_cache_nodes(params = {}, options = {})
        req = build_request(:describe_reserved_cache_nodes, params)
        req.send_request(options)
      end

      # The *DescribeReservedCacheNodesOfferings* action lists available
      # reserved cache node offerings.
      # @option params [String] :reserved_cache_nodes_offering_id
      #   The offering identifier filter value. Use this parameter to show only
      #   the available offering that matches the specified reservation
      #   identifier.
      #
      #   Example: `438012d3-4052-4cc7-b2e3-8d3372e0e706`
      # @option params [String] :cache_node_type
      #   The cache node type filter value. Use this parameter to show only the
      #   available offerings matching the specified cache node type.
      #
      #   Valid node types are as follows:
      #
      #   * General purpose:
      #
      #     * Current generation: `cache.t2.micro`, `cache.t2.small`,
      #       `cache.t2.medium`, `cache.m3.medium`, `cache.m3.large`,
      #       `cache.m3.xlarge`, `cache.m3.2xlarge`
      #
      #     * Previous generation: `cache.t1.micro`, `cache.m1.small`,
      #       `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`
      #
      #   * Compute optimized: `cache.c1.xlarge`
      #
      #   * Memory optimized:
      #
      #     * Current generation: `cache.r3.large`, `cache.r3.xlarge`,
      #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
      #
      #     * Previous generation: `cache.m2.xlarge`, `cache.m2.2xlarge`,
      #       `cache.m2.4xlarge`
      #
      #   **Notes:**
      #
      #   * All t2 instances are created in an Amazon Virtual Private Cloud
      #     (VPC).
      #
      #   * Redis backup/restore is not supported for t2 instances.
      #
      #   * Redis Append-only files (AOF) functionality is not supported for t1
      #     or t2 instances.
      #
      #   For a complete listing of cache node types and specifications, see
      #   [Amazon ElastiCache Product Features and Details][1] and [Cache Node
      #   Type-Specific Parameters for Memcached][2] or [Cache Node
      #   Type-Specific Parameters for Redis][3].
      #
      #
      #
      #   [1]: http://aws.amazon.com/elasticache/details
      #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#CacheParameterGroups.Memcached.NodeSpecific
      #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#CacheParameterGroups.Redis.NodeSpecific
      # @option params [String] :duration
      #   Duration filter value, specified in years or seconds. Use this
      #   parameter to show only reservations for a given duration.
      #
      #   Valid Values: `1 | 3 | 31536000 | 94608000`
      # @option params [String] :product_description
      #   The product description filter value. Use this parameter to show only
      #   the available offerings matching the specified product description.
      # @option params [String] :offering_type
      #   The offering type filter value. Use this parameter to show only the
      #   available offerings matching the specified offering type.
      #
      #   Valid Values: `"Light Utilization"|"Medium Utilization"|"Heavy
      #   Utilization"`
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a marker is
      #   included in the response so that the remaining results can be
      #   retrieved.
      #
      #   Default: 100
      #
      #   Constraints: minimum 20; maximum 100.
      # @option params [String] :marker
      #   An optional marker returned from a prior request. Use this marker for
      #   pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up to
      #   the value specified by *MaxRecords*.
      # @return [Types::ReservedCacheNodesOfferingMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ReservedCacheNodesOfferingMessage#marker #Marker} => String
      #   * {Types::ReservedCacheNodesOfferingMessage#reserved_cache_nodes_offerings #ReservedCacheNodesOfferings} => Array&lt;Types::ReservedCacheNodesOffering&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_reserved_cache_nodes_offerings({
      #     reserved_cache_nodes_offering_id: "String",
      #     cache_node_type: "String",
      #     duration: "String",
      #     product_description: "String",
      #     offering_type: "String",
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.reserved_cache_nodes_offerings #=> Array
      #   resp.reserved_cache_nodes_offerings[0].reserved_cache_nodes_offering_id #=> String
      #   resp.reserved_cache_nodes_offerings[0].cache_node_type #=> String
      #   resp.reserved_cache_nodes_offerings[0].duration #=> Integer
      #   resp.reserved_cache_nodes_offerings[0].fixed_price #=> Float
      #   resp.reserved_cache_nodes_offerings[0].usage_price #=> Float
      #   resp.reserved_cache_nodes_offerings[0].product_description #=> String
      #   resp.reserved_cache_nodes_offerings[0].offering_type #=> String
      #   resp.reserved_cache_nodes_offerings[0].recurring_charges #=> Array
      #   resp.reserved_cache_nodes_offerings[0].recurring_charges[0].recurring_charge_amount #=> Float
      #   resp.reserved_cache_nodes_offerings[0].recurring_charges[0].recurring_charge_frequency #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_reserved_cache_nodes_offerings(params = {}, options = {})
        req = build_request(:describe_reserved_cache_nodes_offerings, params)
        req.send_request(options)
      end

      # The *DescribeSnapshots* action returns information about cache cluster
      # snapshots. By default, *DescribeSnapshots* lists all of your
      # snapshots; it can optionally describe a single snapshot, or just the
      # snapshots associated with a particular cache cluster.
      # @option params [String] :cache_cluster_id
      #   A user-supplied cluster identifier. If this parameter is specified,
      #   only snapshots associated with that specific cache cluster will be
      #   described.
      # @option params [String] :snapshot_name
      #   A user-supplied name of the snapshot. If this parameter is specified,
      #   only this snapshot will be described.
      # @option params [String] :snapshot_source
      #   If set to `system`, the output shows snapshots that were automatically
      #   created by ElastiCache. If set to `user` the output shows snapshots
      #   that were manually created. If omitted, the output shows both
      #   automatically and manually created snapshots.
      # @option params [String] :marker
      #   An optional marker returned from a prior request. Use this marker for
      #   pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up to
      #   the value specified by *MaxRecords*.
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a marker is
      #   included in the response so that the remaining results can be
      #   retrieved.
      #
      #   Default: 50
      #
      #   Constraints: minimum 20; maximum 50.
      # @return [Types::DescribeSnapshotsListMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeSnapshotsListMessage#marker #Marker} => String
      #   * {Types::DescribeSnapshotsListMessage#snapshots #Snapshots} => Array&lt;Types::Snapshot&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_snapshots({
      #     cache_cluster_id: "String",
      #     snapshot_name: "String",
      #     snapshot_source: "String",
      #     marker: "String",
      #     max_records: 1,
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.snapshots #=> Array
      #   resp.snapshots[0].snapshot_name #=> String
      #   resp.snapshots[0].cache_cluster_id #=> String
      #   resp.snapshots[0].snapshot_status #=> String
      #   resp.snapshots[0].snapshot_source #=> String
      #   resp.snapshots[0].cache_node_type #=> String
      #   resp.snapshots[0].engine #=> String
      #   resp.snapshots[0].engine_version #=> String
      #   resp.snapshots[0].num_cache_nodes #=> Integer
      #   resp.snapshots[0].preferred_availability_zone #=> String
      #   resp.snapshots[0].cache_cluster_create_time #=> Time
      #   resp.snapshots[0].preferred_maintenance_window #=> String
      #   resp.snapshots[0].topic_arn #=> String
      #   resp.snapshots[0].port #=> Integer
      #   resp.snapshots[0].cache_parameter_group_name #=> String
      #   resp.snapshots[0].cache_subnet_group_name #=> String
      #   resp.snapshots[0].vpc_id #=> String
      #   resp.snapshots[0].auto_minor_version_upgrade #=> Boolean
      #   resp.snapshots[0].snapshot_retention_limit #=> Integer
      #   resp.snapshots[0].snapshot_window #=> String
      #   resp.snapshots[0].node_snapshots #=> Array
      #   resp.snapshots[0].node_snapshots[0].cache_node_id #=> String
      #   resp.snapshots[0].node_snapshots[0].cache_size #=> String
      #   resp.snapshots[0].node_snapshots[0].cache_node_create_time #=> Time
      #   resp.snapshots[0].node_snapshots[0].snapshot_create_time #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_snapshots(params = {}, options = {})
        req = build_request(:describe_snapshots, params)
        req.send_request(options)
      end

      # The `ListAllowedNodeTypeModifications` action lists all available node
      # types that you can scale your Redis cluster\'s or replication group\'s
      # current node type up to.
      #
      # When you use the `ModifyCacheCluster` or `ModifyReplicationGroup` APIs
      # to scale up your cluster or replication group, the value of the
      # *CacheNodeType* parameter must be one of the node types returned by
      # this action.
      # @option params [String] :cache_cluster_id
      #   The name of the cache cluster you want to scale up to a larger node
      #   instanced type. ElastiCache uses the cluster id to identify the
      #   current node type of this cluster and from that to to create a list of
      #   node types you can scale up to.
      #
      #   <important markdown="1"> You must provide a value for either the *CacheClusterId* or the
      #   *ReplicationGroupId*.
      #
      #    </important>
      # @option params [String] :replication_group_id
      #   The name of the replication group want to scale up to a larger node
      #   type. ElastiCache uses the replication group id to identify the
      #   current node type being used by this replication group, and from that
      #   to create a list of node types you can scale up to.
      #
      #   <important markdown="1"> You must provide a value for either the *CacheClusterId* or the
      #   *ReplicationGroupId*.
      #
      #    </important>
      # @return [Types::AllowedNodeTypeModificationsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AllowedNodeTypeModificationsMessage#scale_up_modifications #ScaleUpModifications} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_allowed_node_type_modifications({
      #     cache_cluster_id: "String",
      #     replication_group_id: "String",
      #   })
      #
      # @example Response structure
      #   resp.scale_up_modifications #=> Array
      #   resp.scale_up_modifications[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_allowed_node_type_modifications(params = {}, options = {})
        req = build_request(:list_allowed_node_type_modifications, params)
        req.send_request(options)
      end

      # The *ListTagsForResource* action lists all cost allocation tags
      # currently on the named resource. A *cost allocation tag* is a
      # key-value pair where the key is case-sensitive and the value is
      # optional. Cost allocation tags can be used to categorize and track
      # your AWS costs.
      #
      # You can have a maximum of 10 cost allocation tags on an ElastiCache
      # resource. For more information, see [Using Cost Allocation Tags in
      # Amazon ElastiCache][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/BestPractices.html
      # @option params [required, String] :resource_name
      #   The Amazon Resource Name (ARN) of the resource for which you want the
      #   list of tags, for example
      #   `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or
      #   `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.
      #
      #   For more information on ARNs, go to [Amazon Resource Names (ARNs) and
      #   AWS Service Namespaces][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
      # @return [Types::TagListMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::TagListMessage#tag_list #TagList} => Array&lt;Types::Tag&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_tags_for_resource({
      #     resource_name: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.tag_list #=> Array
      #   resp.tag_list[0].key #=> String
      #   resp.tag_list[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_tags_for_resource(params = {}, options = {})
        req = build_request(:list_tags_for_resource, params)
        req.send_request(options)
      end

      # The *ModifyCacheCluster* action modifies the settings for a cache
      # cluster. You can use this action to change one or more cluster
      # configuration parameters by specifying the parameters and the new
      # values.
      # @option params [required, String] :cache_cluster_id
      #   The cache cluster identifier. This value is stored as a lowercase
      #   string.
      # @option params [Integer] :num_cache_nodes
      #   The number of cache nodes that the cache cluster should have. If the
      #   value for `NumCacheNodes` is greater than the sum of the number of
      #   current cache nodes and the number of cache nodes pending creation
      #   (which may be zero), then more nodes will be added. If the value is
      #   less than the number of existing cache nodes, then nodes will be
      #   removed. If the value is equal to the number of current cache nodes,
      #   then any pending add or remove requests are canceled.
      #
      #   If you are removing cache nodes, you must use the
      #   `CacheNodeIdsToRemove` parameter to provide the IDs of the specific
      #   cache nodes to remove.
      #
      #   For clusters running Redis, this value must be 1. For clusters running
      #   Memcached, this value must be between 1 and 20.
      #
      #   <note markdown="1"> Adding or removing Memcached cache nodes can be applied immediately or
      #   as a pending action. See `ApplyImmediately`.
      #
      #    A pending action to modify the number of cache nodes in a cluster
      #   during its maintenance window, whether by adding or removing nodes in
      #   accordance with the scale out architecture, is not queued. The
      #   customer\'s latest request to add or remove nodes to the cluster
      #   overrides any previous pending actions to modify the number of cache
      #   nodes in the cluster. For example, a request to remove 2 nodes would
      #   override a previous pending action to remove 3 nodes. Similarly, a
      #   request to add 2 nodes would override a previous pending action to
      #   remove 3 nodes and vice versa. As Memcached cache nodes may now be
      #   provisioned in different Availability Zones with flexible cache node
      #   placement, a request to add nodes does not automatically override a
      #   previous pending action to add nodes. The customer can modify the
      #   previous pending action to add more nodes or explicitly cancel the
      #   pending request and retry the new request. To cancel pending actions
      #   to modify the number of cache nodes in a cluster, use the
      #   `ModifyCacheCluster` request and set *NumCacheNodes* equal to the
      #   number of cache nodes currently in the cache cluster.
      #
      #    </note>
      # @option params [Array<String>] :cache_node_ids_to_remove
      #   A list of cache node IDs to be removed. A node ID is a numeric
      #   identifier (0001, 0002, etc.). This parameter is only valid when
      #   *NumCacheNodes* is less than the existing number of cache nodes. The
      #   number of cache node IDs supplied in this parameter must match the
      #   difference between the existing number of cache nodes in the cluster
      #   or pending cache nodes, whichever is greater, and the value of
      #   *NumCacheNodes* in the request.
      #
      #   For example: If you have 3 active cache nodes, 7 pending cache nodes,
      #   and the number of cache nodes in this `ModifyCacheCluser` call is 5,
      #   you must list 2 (7 - 5) cache node IDs to remove.
      # @option params [String] :az_mode
      #   Specifies whether the new nodes in this Memcached cache cluster are
      #   all created in a single Availability Zone or created across multiple
      #   Availability Zones.
      #
      #   Valid values: `single-az` \| `cross-az`.
      #
      #   This option is only supported for Memcached cache clusters.
      #
      #   <note markdown="1"> You cannot specify `single-az` if the Memcached cache cluster already
      #   has cache nodes in different Availability Zones. If `cross-az` is
      #   specified, existing Memcached nodes remain in their current
      #   Availability Zone.
      #
      #    Only newly created nodes will be located in different Availability
      #   Zones. For instructions on how to move existing Memcached nodes to
      #   different Availability Zones, see the **Availability Zone
      #   Considerations** section of [Cache Node Considerations for
      #   Memcached][1].
      #
      #    </note>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheNode.Memcached.html
      # @option params [Array<String>] :new_availability_zones
      #   The list of Availability Zones where the new Memcached cache nodes
      #   will be created.
      #
      #   This parameter is only valid when *NumCacheNodes* in the request is
      #   greater than the sum of the number of active cache nodes and the
      #   number of cache nodes pending creation (which may be zero). The number
      #   of Availability Zones supplied in this list must match the cache nodes
      #   being added in this request.
      #
      #   This option is only supported on Memcached clusters.
      #
      #   Scenarios:
      #
      #   * **Scenario 1:** You have 3 active nodes and wish to add 2 nodes.
      #     Specify `NumCacheNodes=5` (3 + 2) and optionally specify two
      #     Availability Zones for the two new nodes.
      #
      #   * **Scenario 2:** You have 3 active nodes and 2 nodes pending creation
      #     (from the scenario 1 call) and want to add 1 more node. Specify
      #     `NumCacheNodes=6` ((3 + 2) + 1) and optionally specify an
      #     Availability Zone for the new node.
      #
      #   * **Scenario 3:** You want to cancel all pending actions. Specify
      #     `NumCacheNodes=3` to cancel all pending actions.
      #
      #   The Availability Zone placement of nodes pending creation cannot be
      #   modified. If you wish to cancel any nodes pending creation, add 0
      #   nodes by setting `NumCacheNodes` to the number of current nodes.
      #
      #   If `cross-az` is specified, existing Memcached nodes remain in their
      #   current Availability Zone. Only newly created nodes can be located in
      #   different Availability Zones. For guidance on how to move existing
      #   Memcached nodes to different Availability Zones, see the
      #   **Availability Zone Considerations** section of [Cache Node
      #   Considerations for Memcached][1].
      #
      #   **Impact of new add/remove requests upon pending requests**
      #
      #   * Scenario-1
      #
      #     * Pending Action: Delete
      #
      #     * New Request: Delete
      #
      #     * Result: The new delete, pending or immediate, replaces the pending
      #       delete.
      #
      #   * Scenario-2
      #
      #     * Pending Action: Delete
      #
      #     * New Request: Create
      #
      #     * Result: The new create, pending or immediate, replaces the pending
      #       delete.
      #
      #   * Scenario-3
      #
      #     * Pending Action: Create
      #
      #     * New Request: Delete
      #
      #     * Result: The new delete, pending or immediate, replaces the pending
      #       create.
      #
      #   * Scenario-4
      #
      #     * Pending Action: Create
      #
      #     * New Request: Create
      #
      #     * Result: The new create is added to the pending create.
      #
      #       <important markdown="1"> **Important:** If the new create request is **Apply Immediately -
      #       Yes**, all creates are performed immediately. If the new create
      #       request is **Apply Immediately - No**, all creates are pending.
      #
      #        </important>
      #
      #   Example:
      #
      #   `NewAvailabilityZones.member.1=us-west-2a&amp;NewAvailabilityZones.member.2=us-west-2b&amp;NewAvailabilityZones.member.3=us-west-2c`
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheNode.Memcached.html
      # @option params [Array<String>] :cache_security_group_names
      #   A list of cache security group names to authorize on this cache
      #   cluster. This change is asynchronously applied as soon as possible.
      #
      #   This parameter can be used only with clusters that are created outside
      #   of an Amazon Virtual Private Cloud (VPC).
      #
      #   Constraints: Must contain no more than 255 alphanumeric characters.
      #   Must not be \"Default\".
      # @option params [Array<String>] :security_group_ids
      #   Specifies the VPC Security Groups associated with the cache cluster.
      #
      #   This parameter can be used only with clusters that are created in an
      #   Amazon Virtual Private Cloud (VPC).
      # @option params [String] :preferred_maintenance_window
      #   Specifies the weekly time range during which maintenance on the cache
      #   cluster is performed. It is specified as a range in the format
      #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
      #   window is a 60 minute period. Valid values for `ddd` are:
      #
      #   * `sun`
      #
      #   * `mon`
      #
      #   * `tue`
      #
      #   * `wed`
      #
      #   * `thu`
      #
      #   * `fri`
      #
      #   * `sat`
      #
      #   Example: `sun:05:00-sun:09:00`
      # @option params [String] :notification_topic_arn
      #   The Amazon Resource Name (ARN) of the Amazon SNS topic to which
      #   notifications will be sent.
      #
      #   <note markdown="1"> The Amazon SNS topic owner must be same as the cache cluster owner.
      #
      #    </note>
      # @option params [String] :cache_parameter_group_name
      #   The name of the cache parameter group to apply to this cache cluster.
      #   This change is asynchronously applied as soon as possible for
      #   parameters when the *ApplyImmediately* parameter is specified as
      #   *true* for this request.
      # @option params [String] :notification_topic_status
      #   The status of the Amazon SNS notification topic. Notifications are
      #   sent only if the status is *active*.
      #
      #   Valid values: `active` \| `inactive`
      # @option params [Boolean] :apply_immediately
      #   If `true`, this parameter causes the modifications in this request and
      #   any pending modifications to be applied, asynchronously and as soon as
      #   possible, regardless of the *PreferredMaintenanceWindow* setting for
      #   the cache cluster.
      #
      #   If `false`, then changes to the cache cluster are applied on the next
      #   maintenance reboot, or the next failure reboot, whichever occurs
      #   first.
      #
      #   <important markdown="1"> If you perform a `ModifyCacheCluster` before a pending modification is
      #   applied, the pending modification is replaced by the newer
      #   modification.
      #
      #    </important>
      #
      #   Valid values: `true` \| `false`
      #
      #   Default: `false`
      # @option params [String] :engine_version
      #   The upgraded version of the cache engine to be run on the cache nodes.
      #
      #   **Important:** You can upgrade to a newer engine version (see
      #   [Selecting a Cache Engine and Version][1]), but you cannot downgrade
      #   to an earlier engine version. If you want to use an earlier engine
      #   version, you must delete the existing cache cluster and create it anew
      #   with the earlier engine version.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement
      # @option params [Boolean] :auto_minor_version_upgrade
      #   This parameter is currently disabled.
      # @option params [Integer] :snapshot_retention_limit
      #   The number of days for which ElastiCache will retain automatic cache
      #   cluster snapshots before deleting them. For example, if you set
      #   *SnapshotRetentionLimit* to 5, then a snapshot that was taken today
      #   will be retained for 5 days before being deleted.
      #
      #   <note markdown="1"> If the value of SnapshotRetentionLimit is set to zero (0), backups are
      #   turned off.
      #
      #    </note>
      # @option params [String] :snapshot_window
      #   The daily time range (in UTC) during which ElastiCache will begin
      #   taking a daily snapshot of your cache cluster.
      # @option params [String] :cache_node_type
      #   A valid cache node type that you want to scale this cache cluster to.
      #   The value of this parameter must be one of the *ScaleUpModifications*
      #   values returned by the `ListAllowedCacheNodeTypeModification` action.
      # @return [Types::ModifyCacheClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ModifyCacheClusterResult#cache_cluster #CacheCluster} => Types::CacheCluster
      #
      # @example Request syntax with placeholder values
      #   resp = client.modify_cache_cluster({
      #     cache_cluster_id: "String", # required
      #     num_cache_nodes: 1,
      #     cache_node_ids_to_remove: ["String"],
      #     az_mode: "single-az", # accepts single-az, cross-az
      #     new_availability_zones: ["String"],
      #     cache_security_group_names: ["String"],
      #     security_group_ids: ["String"],
      #     preferred_maintenance_window: "String",
      #     notification_topic_arn: "String",
      #     cache_parameter_group_name: "String",
      #     notification_topic_status: "String",
      #     apply_immediately: false,
      #     engine_version: "String",
      #     auto_minor_version_upgrade: false,
      #     snapshot_retention_limit: 1,
      #     snapshot_window: "String",
      #     cache_node_type: "String",
      #   })
      #
      # @example Response structure
      #   resp.cache_cluster.cache_cluster_id #=> String
      #   resp.cache_cluster.configuration_endpoint.address #=> String
      #   resp.cache_cluster.configuration_endpoint.port #=> Integer
      #   resp.cache_cluster.client_download_landing_page #=> String
      #   resp.cache_cluster.cache_node_type #=> String
      #   resp.cache_cluster.engine #=> String
      #   resp.cache_cluster.engine_version #=> String
      #   resp.cache_cluster.cache_cluster_status #=> String
      #   resp.cache_cluster.num_cache_nodes #=> Integer
      #   resp.cache_cluster.preferred_availability_zone #=> String
      #   resp.cache_cluster.cache_cluster_create_time #=> Time
      #   resp.cache_cluster.preferred_maintenance_window #=> String
      #   resp.cache_cluster.pending_modified_values.num_cache_nodes #=> Integer
      #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove #=> Array
      #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove[0] #=> String
      #   resp.cache_cluster.pending_modified_values.engine_version #=> String
      #   resp.cache_cluster.pending_modified_values.cache_node_type #=> String
      #   resp.cache_cluster.notification_configuration.topic_arn #=> String
      #   resp.cache_cluster.notification_configuration.topic_status #=> String
      #   resp.cache_cluster.cache_security_groups #=> Array
      #   resp.cache_cluster.cache_security_groups[0].cache_security_group_name #=> String
      #   resp.cache_cluster.cache_security_groups[0].status #=> String
      #   resp.cache_cluster.cache_parameter_group.cache_parameter_group_name #=> String
      #   resp.cache_cluster.cache_parameter_group.parameter_apply_status #=> String
      #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot #=> Array
      #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot[0] #=> String
      #   resp.cache_cluster.cache_subnet_group_name #=> String
      #   resp.cache_cluster.cache_nodes #=> Array
      #   resp.cache_cluster.cache_nodes[0].cache_node_id #=> String
      #   resp.cache_cluster.cache_nodes[0].cache_node_status #=> String
      #   resp.cache_cluster.cache_nodes[0].cache_node_create_time #=> Time
      #   resp.cache_cluster.cache_nodes[0].endpoint.address #=> String
      #   resp.cache_cluster.cache_nodes[0].endpoint.port #=> Integer
      #   resp.cache_cluster.cache_nodes[0].parameter_group_status #=> String
      #   resp.cache_cluster.cache_nodes[0].source_cache_node_id #=> String
      #   resp.cache_cluster.cache_nodes[0].customer_availability_zone #=> String
      #   resp.cache_cluster.auto_minor_version_upgrade #=> Boolean
      #   resp.cache_cluster.security_groups #=> Array
      #   resp.cache_cluster.security_groups[0].security_group_id #=> String
      #   resp.cache_cluster.security_groups[0].status #=> String
      #   resp.cache_cluster.replication_group_id #=> String
      #   resp.cache_cluster.snapshot_retention_limit #=> Integer
      #   resp.cache_cluster.snapshot_window #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def modify_cache_cluster(params = {}, options = {})
        req = build_request(:modify_cache_cluster, params)
        req.send_request(options)
      end

      # The *ModifyCacheParameterGroup* action modifies the parameters of a
      # cache parameter group. You can modify up to 20 parameters in a single
      # request by submitting a list parameter name and value pairs.
      # @option params [required, String] :cache_parameter_group_name
      #   The name of the cache parameter group to modify.
      # @option params [required, Array<Types::ParameterNameValue>] :parameter_name_values
      #   An array of parameter names and values for the parameter update. You
      #   must supply at least one parameter name and value; subsequent
      #   arguments are optional. A maximum of 20 parameters may be modified per
      #   request.
      # @return [Types::CacheParameterGroupNameMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CacheParameterGroupNameMessage#cache_parameter_group_name #CacheParameterGroupName} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.modify_cache_parameter_group({
      #     cache_parameter_group_name: "String", # required
      #     parameter_name_values: [ # required
      #       {
      #         parameter_name: "String",
      #         parameter_value: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.cache_parameter_group_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def modify_cache_parameter_group(params = {}, options = {})
        req = build_request(:modify_cache_parameter_group, params)
        req.send_request(options)
      end

      # The *ModifyCacheSubnetGroup* action modifies an existing cache subnet
      # group.
      # @option params [required, String] :cache_subnet_group_name
      #   The name for the cache subnet group. This value is stored as a
      #   lowercase string.
      #
      #   Constraints: Must contain no more than 255 alphanumeric characters or
      #   hyphens.
      #
      #   Example: `mysubnetgroup`
      # @option params [String] :cache_subnet_group_description
      #   A description for the cache subnet group.
      # @option params [Array<String>] :subnet_ids
      #   The EC2 subnet IDs for the cache subnet group.
      # @return [Types::ModifyCacheSubnetGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ModifyCacheSubnetGroupResult#cache_subnet_group #CacheSubnetGroup} => Types::CacheSubnetGroup
      #
      # @example Request syntax with placeholder values
      #   resp = client.modify_cache_subnet_group({
      #     cache_subnet_group_name: "String", # required
      #     cache_subnet_group_description: "String",
      #     subnet_ids: ["String"],
      #   })
      #
      # @example Response structure
      #   resp.cache_subnet_group.cache_subnet_group_name #=> String
      #   resp.cache_subnet_group.cache_subnet_group_description #=> String
      #   resp.cache_subnet_group.vpc_id #=> String
      #   resp.cache_subnet_group.subnets #=> Array
      #   resp.cache_subnet_group.subnets[0].subnet_identifier #=> String
      #   resp.cache_subnet_group.subnets[0].subnet_availability_zone.name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def modify_cache_subnet_group(params = {}, options = {})
        req = build_request(:modify_cache_subnet_group, params)
        req.send_request(options)
      end

      # The *ModifyReplicationGroup* action modifies the settings for a
      # replication group.
      # @option params [required, String] :replication_group_id
      #   The identifier of the replication group to modify.
      # @option params [String] :replication_group_description
      #   A description for the replication group. Maximum length is 255
      #   characters.
      # @option params [String] :primary_cluster_id
      #   If this parameter is specified, ElastiCache will promote the specified
      #   cluster in the specified replication group to the primary role. The
      #   nodes of all other clusters in the replication group will be read
      #   replicas.
      # @option params [String] :snapshotting_cluster_id
      #   The cache cluster ID that will be used as the daily snapshot source
      #   for the replication group.
      # @option params [Boolean] :automatic_failover_enabled
      #   Whether a read replica will be automatically promoted to read/write
      #   primary if the existing primary encounters a failure.
      #
      #   Valid values: `true` \| `false`
      #
      #   <note markdown="1"> ElastiCache Multi-AZ replication groups are not supported on:
      #
      #    * Redis versions earlier than 2.8.6.
      #
      #   * T1 and T2 cache node types.
      #
      #    </note>
      # @option params [Array<String>] :cache_security_group_names
      #   A list of cache security group names to authorize for the clusters in
      #   this replication group. This change is asynchronously applied as soon
      #   as possible.
      #
      #   This parameter can be used only with replication group containing
      #   cache clusters running outside of an Amazon Virtual Private Cloud
      #   (VPC).
      #
      #   Constraints: Must contain no more than 255 alphanumeric characters.
      #   Must not be \"Default\".
      # @option params [Array<String>] :security_group_ids
      #   Specifies the VPC Security Groups associated with the cache clusters
      #   in the replication group.
      #
      #   This parameter can be used only with replication group containing
      #   cache clusters running in an Amazon Virtual Private Cloud (VPC).
      # @option params [String] :preferred_maintenance_window
      #   Specifies the weekly time range during which maintenance on the cache
      #   cluster is performed. It is specified as a range in the format
      #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
      #   window is a 60 minute period. Valid values for `ddd` are:
      #
      #   * `sun`
      #
      #   * `mon`
      #
      #   * `tue`
      #
      #   * `wed`
      #
      #   * `thu`
      #
      #   * `fri`
      #
      #   * `sat`
      #
      #   Example: `sun:05:00-sun:09:00`
      # @option params [String] :notification_topic_arn
      #   The Amazon Resource Name (ARN) of the Amazon SNS topic to which
      #   notifications will be sent.
      #
      #   <note markdown="1"> The Amazon SNS topic owner must be same as the replication group
      #   owner.
      #
      #    </note>
      # @option params [String] :cache_parameter_group_name
      #   The name of the cache parameter group to apply to all of the clusters
      #   in this replication group. This change is asynchronously applied as
      #   soon as possible for parameters when the *ApplyImmediately* parameter
      #   is specified as *true* for this request.
      # @option params [String] :notification_topic_status
      #   The status of the Amazon SNS notification topic for the replication
      #   group. Notifications are sent only if the status is *active*.
      #
      #   Valid values: `active` \| `inactive`
      # @option params [Boolean] :apply_immediately
      #   If `true`, this parameter causes the modifications in this request and
      #   any pending modifications to be applied, asynchronously and as soon as
      #   possible, regardless of the *PreferredMaintenanceWindow* setting for
      #   the replication group.
      #
      #   If `false`, then changes to the nodes in the replication group are
      #   applied on the next maintenance reboot, or the next failure reboot,
      #   whichever occurs first.
      #
      #   Valid values: `true` \| `false`
      #
      #   Default: `false`
      # @option params [String] :engine_version
      #   The upgraded version of the cache engine to be run on the cache
      #   clusters in the replication group.
      #
      #   **Important:** You can upgrade to a newer engine version (see
      #   [Selecting a Cache Engine and Version][1]), but you cannot downgrade
      #   to an earlier engine version. If you want to use an earlier engine
      #   version, you must delete the existing replication group and create it
      #   anew with the earlier engine version.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement
      # @option params [Boolean] :auto_minor_version_upgrade
      #   This parameter is currently disabled.
      # @option params [Integer] :snapshot_retention_limit
      #   The number of days for which ElastiCache will retain automatic node
      #   group snapshots before deleting them. For example, if you set
      #   *SnapshotRetentionLimit* to 5, then a snapshot that was taken today
      #   will be retained for 5 days before being deleted.
      #
      #   **Important** If the value of SnapshotRetentionLimit is set to zero
      #   (0), backups are turned off.
      # @option params [String] :snapshot_window
      #   The daily time range (in UTC) during which ElastiCache will begin
      #   taking a daily snapshot of the node group specified by
      #   *SnapshottingClusterId*.
      #
      #   Example: `05:00-09:00`
      #
      #   If you do not specify this parameter, then ElastiCache will
      #   automatically choose an appropriate time range.
      # @option params [String] :cache_node_type
      #   A valid cache node type that you want to scale this replication group
      #   to. The value of this parameter must be one of the
      #   *ScaleUpModifications* values returned by the
      #   `ListAllowedCacheNodeTypeModification` action.
      # @return [Types::ModifyReplicationGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ModifyReplicationGroupResult#replication_group #ReplicationGroup} => Types::ReplicationGroup
      #
      # @example Request syntax with placeholder values
      #   resp = client.modify_replication_group({
      #     replication_group_id: "String", # required
      #     replication_group_description: "String",
      #     primary_cluster_id: "String",
      #     snapshotting_cluster_id: "String",
      #     automatic_failover_enabled: false,
      #     cache_security_group_names: ["String"],
      #     security_group_ids: ["String"],
      #     preferred_maintenance_window: "String",
      #     notification_topic_arn: "String",
      #     cache_parameter_group_name: "String",
      #     notification_topic_status: "String",
      #     apply_immediately: false,
      #     engine_version: "String",
      #     auto_minor_version_upgrade: false,
      #     snapshot_retention_limit: 1,
      #     snapshot_window: "String",
      #     cache_node_type: "String",
      #   })
      #
      # @example Response structure
      #   resp.replication_group.replication_group_id #=> String
      #   resp.replication_group.description #=> String
      #   resp.replication_group.status #=> String
      #   resp.replication_group.pending_modified_values.primary_cluster_id #=> String
      #   resp.replication_group.pending_modified_values.automatic_failover_status #=> String, one of "enabled", "disabled"
      #   resp.replication_group.member_clusters #=> Array
      #   resp.replication_group.member_clusters[0] #=> String
      #   resp.replication_group.node_groups #=> Array
      #   resp.replication_group.node_groups[0].node_group_id #=> String
      #   resp.replication_group.node_groups[0].status #=> String
      #   resp.replication_group.node_groups[0].primary_endpoint.address #=> String
      #   resp.replication_group.node_groups[0].primary_endpoint.port #=> Integer
      #   resp.replication_group.node_groups[0].node_group_members #=> Array
      #   resp.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
      #   resp.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
      #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.address #=> String
      #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.port #=> Integer
      #   resp.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
      #   resp.replication_group.node_groups[0].node_group_members[0].current_role #=> String
      #   resp.replication_group.snapshotting_cluster_id #=> String
      #   resp.replication_group.automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def modify_replication_group(params = {}, options = {})
        req = build_request(:modify_replication_group, params)
        req.send_request(options)
      end

      # The *PurchaseReservedCacheNodesOffering* action allows you to purchase
      # a reserved cache node offering.
      # @option params [required, String] :reserved_cache_nodes_offering_id
      #   The ID of the reserved cache node offering to purchase.
      #
      #   Example: `438012d3-4052-4cc7-b2e3-8d3372e0e706`
      # @option params [String] :reserved_cache_node_id
      #   A customer-specified identifier to track this reservation.
      #
      #   <note markdown="1"> The Reserved Cache Node ID is an unique customer-specified identifier
      #   to track this reservation. If this parameter is not specified,
      #   ElastiCache automatically generates an identifier for the reservation.
      #
      #    </note>
      #
      #   Example: myreservationID
      # @option params [Integer] :cache_node_count
      #   The number of cache node instances to reserve.
      #
      #   Default: `1`
      # @return [Types::PurchaseReservedCacheNodesOfferingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PurchaseReservedCacheNodesOfferingResult#reserved_cache_node #ReservedCacheNode} => Types::ReservedCacheNode
      #
      # @example Request syntax with placeholder values
      #   resp = client.purchase_reserved_cache_nodes_offering({
      #     reserved_cache_nodes_offering_id: "String", # required
      #     reserved_cache_node_id: "String",
      #     cache_node_count: 1,
      #   })
      #
      # @example Response structure
      #   resp.reserved_cache_node.reserved_cache_node_id #=> String
      #   resp.reserved_cache_node.reserved_cache_nodes_offering_id #=> String
      #   resp.reserved_cache_node.cache_node_type #=> String
      #   resp.reserved_cache_node.start_time #=> Time
      #   resp.reserved_cache_node.duration #=> Integer
      #   resp.reserved_cache_node.fixed_price #=> Float
      #   resp.reserved_cache_node.usage_price #=> Float
      #   resp.reserved_cache_node.cache_node_count #=> Integer
      #   resp.reserved_cache_node.product_description #=> String
      #   resp.reserved_cache_node.offering_type #=> String
      #   resp.reserved_cache_node.state #=> String
      #   resp.reserved_cache_node.recurring_charges #=> Array
      #   resp.reserved_cache_node.recurring_charges[0].recurring_charge_amount #=> Float
      #   resp.reserved_cache_node.recurring_charges[0].recurring_charge_frequency #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def purchase_reserved_cache_nodes_offering(params = {}, options = {})
        req = build_request(:purchase_reserved_cache_nodes_offering, params)
        req.send_request(options)
      end

      # The *RebootCacheCluster* action reboots some, or all, of the cache
      # nodes within a provisioned cache cluster. This API will apply any
      # modified cache parameter groups to the cache cluster. The reboot
      # action takes place as soon as possible, and results in a momentary
      # outage to the cache cluster. During the reboot, the cache cluster
      # status is set to REBOOTING.
      #
      # The reboot causes the contents of the cache (for each cache node being
      # rebooted) to be lost.
      #
      # When the reboot is complete, a cache cluster event is created.
      # @option params [required, String] :cache_cluster_id
      #   The cache cluster identifier. This parameter is stored as a lowercase
      #   string.
      # @option params [required, Array<String>] :cache_node_ids_to_reboot
      #   A list of cache node IDs to reboot. A node ID is a numeric identifier
      #   (0001, 0002, etc.). To reboot an entire cache cluster, specify all of
      #   the cache node IDs.
      # @return [Types::RebootCacheClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RebootCacheClusterResult#cache_cluster #CacheCluster} => Types::CacheCluster
      #
      # @example Request syntax with placeholder values
      #   resp = client.reboot_cache_cluster({
      #     cache_cluster_id: "String", # required
      #     cache_node_ids_to_reboot: ["String"], # required
      #   })
      #
      # @example Response structure
      #   resp.cache_cluster.cache_cluster_id #=> String
      #   resp.cache_cluster.configuration_endpoint.address #=> String
      #   resp.cache_cluster.configuration_endpoint.port #=> Integer
      #   resp.cache_cluster.client_download_landing_page #=> String
      #   resp.cache_cluster.cache_node_type #=> String
      #   resp.cache_cluster.engine #=> String
      #   resp.cache_cluster.engine_version #=> String
      #   resp.cache_cluster.cache_cluster_status #=> String
      #   resp.cache_cluster.num_cache_nodes #=> Integer
      #   resp.cache_cluster.preferred_availability_zone #=> String
      #   resp.cache_cluster.cache_cluster_create_time #=> Time
      #   resp.cache_cluster.preferred_maintenance_window #=> String
      #   resp.cache_cluster.pending_modified_values.num_cache_nodes #=> Integer
      #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove #=> Array
      #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove[0] #=> String
      #   resp.cache_cluster.pending_modified_values.engine_version #=> String
      #   resp.cache_cluster.pending_modified_values.cache_node_type #=> String
      #   resp.cache_cluster.notification_configuration.topic_arn #=> String
      #   resp.cache_cluster.notification_configuration.topic_status #=> String
      #   resp.cache_cluster.cache_security_groups #=> Array
      #   resp.cache_cluster.cache_security_groups[0].cache_security_group_name #=> String
      #   resp.cache_cluster.cache_security_groups[0].status #=> String
      #   resp.cache_cluster.cache_parameter_group.cache_parameter_group_name #=> String
      #   resp.cache_cluster.cache_parameter_group.parameter_apply_status #=> String
      #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot #=> Array
      #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot[0] #=> String
      #   resp.cache_cluster.cache_subnet_group_name #=> String
      #   resp.cache_cluster.cache_nodes #=> Array
      #   resp.cache_cluster.cache_nodes[0].cache_node_id #=> String
      #   resp.cache_cluster.cache_nodes[0].cache_node_status #=> String
      #   resp.cache_cluster.cache_nodes[0].cache_node_create_time #=> Time
      #   resp.cache_cluster.cache_nodes[0].endpoint.address #=> String
      #   resp.cache_cluster.cache_nodes[0].endpoint.port #=> Integer
      #   resp.cache_cluster.cache_nodes[0].parameter_group_status #=> String
      #   resp.cache_cluster.cache_nodes[0].source_cache_node_id #=> String
      #   resp.cache_cluster.cache_nodes[0].customer_availability_zone #=> String
      #   resp.cache_cluster.auto_minor_version_upgrade #=> Boolean
      #   resp.cache_cluster.security_groups #=> Array
      #   resp.cache_cluster.security_groups[0].security_group_id #=> String
      #   resp.cache_cluster.security_groups[0].status #=> String
      #   resp.cache_cluster.replication_group_id #=> String
      #   resp.cache_cluster.snapshot_retention_limit #=> Integer
      #   resp.cache_cluster.snapshot_window #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def reboot_cache_cluster(params = {}, options = {})
        req = build_request(:reboot_cache_cluster, params)
        req.send_request(options)
      end

      # The *RemoveTagsFromResource* action removes the tags identified by the
      # `TagKeys` list from the named resource.
      # @option params [required, String] :resource_name
      #   The Amazon Resource Name (ARN) of the resource from which you want the
      #   tags removed, for example
      #   `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or
      #   `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.
      #
      #   For more information on ARNs, go to [Amazon Resource Names (ARNs) and
      #   AWS Service Namespaces][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
      # @option params [required, Array<String>] :tag_keys
      #   A list of `TagKeys` identifying the tags you want removed from the
      #   named resource. For example, `TagKeys.member.1=Region` removes the
      #   cost allocation tag with the key name `Region` from the resource named
      #   by the *ResourceName* parameter.
      # @return [Types::TagListMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::TagListMessage#tag_list #TagList} => Array&lt;Types::Tag&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.remove_tags_from_resource({
      #     resource_name: "String", # required
      #     tag_keys: ["String"], # required
      #   })
      #
      # @example Response structure
      #   resp.tag_list #=> Array
      #   resp.tag_list[0].key #=> String
      #   resp.tag_list[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def remove_tags_from_resource(params = {}, options = {})
        req = build_request(:remove_tags_from_resource, params)
        req.send_request(options)
      end

      # The *ResetCacheParameterGroup* action modifies the parameters of a
      # cache parameter group to the engine or system default value. You can
      # reset specific parameters by submitting a list of parameter names. To
      # reset the entire cache parameter group, specify the
      # *ResetAllParameters* and *CacheParameterGroupName* parameters.
      # @option params [required, String] :cache_parameter_group_name
      #   The name of the cache parameter group to reset.
      # @option params [Boolean] :reset_all_parameters
      #   If *true*, all parameters in the cache parameter group will be reset
      #   to their default values. If *false*, only the parameters listed by
      #   *ParameterNameValues* are reset to their default values.
      #
      #   Valid values: `true` \| `false`
      # @option params [Array<Types::ParameterNameValue>] :parameter_name_values
      #   An array of parameter names to reset to their default values. If
      #   *ResetAllParameters* is *false*, you must specify the name of at least
      #   one parameter to reset.
      # @return [Types::CacheParameterGroupNameMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CacheParameterGroupNameMessage#cache_parameter_group_name #CacheParameterGroupName} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.reset_cache_parameter_group({
      #     cache_parameter_group_name: "String", # required
      #     reset_all_parameters: false,
      #     parameter_name_values: [
      #       {
      #         parameter_name: "String",
      #         parameter_value: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.cache_parameter_group_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def reset_cache_parameter_group(params = {}, options = {})
        req = build_request(:reset_cache_parameter_group, params)
        req.send_request(options)
      end

      # The *RevokeCacheSecurityGroupIngress* action revokes ingress from a
      # cache security group. Use this action to disallow access from an
      # Amazon EC2 security group that had been previously authorized.
      # @option params [required, String] :cache_security_group_name
      #   The name of the cache security group to revoke ingress from.
      # @option params [required, String] :ec2_security_group_name
      #   The name of the Amazon EC2 security group to revoke access from.
      # @option params [required, String] :ec2_security_group_owner_id
      #   The AWS account number of the Amazon EC2 security group owner. Note
      #   that this is not the same thing as an AWS access key ID - you must
      #   provide a valid AWS account number for this parameter.
      # @return [Types::RevokeCacheSecurityGroupIngressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RevokeCacheSecurityGroupIngressResult#cache_security_group #CacheSecurityGroup} => Types::CacheSecurityGroup
      #
      # @example Request syntax with placeholder values
      #   resp = client.revoke_cache_security_group_ingress({
      #     cache_security_group_name: "String", # required
      #     ec2_security_group_name: "String", # required
      #     ec2_security_group_owner_id: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.cache_security_group.owner_id #=> String
      #   resp.cache_security_group.cache_security_group_name #=> String
      #   resp.cache_security_group.description #=> String
      #   resp.cache_security_group.ec2_security_groups #=> Array
      #   resp.cache_security_group.ec2_security_groups[0].status #=> String
      #   resp.cache_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
      #   resp.cache_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def revoke_cache_security_group_ingress(params = {}, options = {})
        req = build_request(:revoke_cache_security_group_ingress, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {
          cache_cluster_available: Waiters::CacheClusterAvailable,
          cache_cluster_deleted: Waiters::CacheClusterDeleted,
          replication_group_available: Waiters::ReplicationGroupAvailable,
          replication_group_deleted: Waiters::ReplicationGroupDeleted
        }
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
