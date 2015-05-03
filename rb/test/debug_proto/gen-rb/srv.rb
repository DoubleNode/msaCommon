#
# Autogenerated by Thrift Compiler (0.9.2)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'debug_proto_test_types'

module Srv
  class Client
    include ::Thrift::Client

    def Janky(arg)
      send_Janky(arg)
      return recv_Janky()
    end

    def send_Janky(arg)
      send_message('Janky', Janky_args, :arg => arg)
    end

    def recv_Janky()
      result = receive_message(Janky_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'Janky failed: unknown result')
    end

    def voidMethod()
      send_voidMethod()
      recv_voidMethod()
    end

    def send_voidMethod()
      send_message('voidMethod', VoidMethod_args)
    end

    def recv_voidMethod()
      result = receive_message(VoidMethod_result)
      return
    end

    def primitiveMethod()
      send_primitiveMethod()
      return recv_primitiveMethod()
    end

    def send_primitiveMethod()
      send_message('primitiveMethod', PrimitiveMethod_args)
    end

    def recv_primitiveMethod()
      result = receive_message(PrimitiveMethod_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'primitiveMethod failed: unknown result')
    end

    def structMethod()
      send_structMethod()
      return recv_structMethod()
    end

    def send_structMethod()
      send_message('structMethod', StructMethod_args)
    end

    def recv_structMethod()
      result = receive_message(StructMethod_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'structMethod failed: unknown result')
    end

    def methodWithDefaultArgs(something)
      send_methodWithDefaultArgs(something)
      recv_methodWithDefaultArgs()
    end

    def send_methodWithDefaultArgs(something)
      send_message('methodWithDefaultArgs', MethodWithDefaultArgs_args, :something => something)
    end

    def recv_methodWithDefaultArgs()
      result = receive_message(MethodWithDefaultArgs_result)
      return
    end

    def onewayMethod()
      send_onewayMethod()
    end

    def send_onewayMethod()
      send_oneway_message('onewayMethod', OnewayMethod_args)
    end
  end

  class Processor
    include ::Thrift::Processor

    def process_Janky(seqid, iprot, oprot)
      args = read_args(iprot, Janky_args)
      result = Janky_result.new()
      result.success = @handler.Janky(args.arg)
      write_result(result, oprot, 'Janky', seqid)
    end

    def process_voidMethod(seqid, iprot, oprot)
      args = read_args(iprot, VoidMethod_args)
      result = VoidMethod_result.new()
      @handler.voidMethod()
      write_result(result, oprot, 'voidMethod', seqid)
    end

    def process_primitiveMethod(seqid, iprot, oprot)
      args = read_args(iprot, PrimitiveMethod_args)
      result = PrimitiveMethod_result.new()
      result.success = @handler.primitiveMethod()
      write_result(result, oprot, 'primitiveMethod', seqid)
    end

    def process_structMethod(seqid, iprot, oprot)
      args = read_args(iprot, StructMethod_args)
      result = StructMethod_result.new()
      result.success = @handler.structMethod()
      write_result(result, oprot, 'structMethod', seqid)
    end

    def process_methodWithDefaultArgs(seqid, iprot, oprot)
      args = read_args(iprot, MethodWithDefaultArgs_args)
      result = MethodWithDefaultArgs_result.new()
      @handler.methodWithDefaultArgs(args.something)
      write_result(result, oprot, 'methodWithDefaultArgs', seqid)
    end

    def process_onewayMethod(seqid, iprot, oprot)
      args = read_args(iprot, OnewayMethod_args)
      @handler.onewayMethod()
      return
    end

  end

  # HELPER FUNCTIONS AND STRUCTURES

  class Janky_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    ARG = 1

    FIELDS = {
      ARG => {:type => ::Thrift::Types::I32, :name => 'arg'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Janky_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::I32, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class VoidMethod_args
    include ::Thrift::Struct, ::Thrift::Struct_Union

    FIELDS = {

    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class VoidMethod_result
    include ::Thrift::Struct, ::Thrift::Struct_Union

    FIELDS = {

    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class PrimitiveMethod_args
    include ::Thrift::Struct, ::Thrift::Struct_Union

    FIELDS = {

    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class PrimitiveMethod_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::I32, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class StructMethod_args
    include ::Thrift::Struct, ::Thrift::Struct_Union

    FIELDS = {

    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class StructMethod_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::CompactProtoTestStruct}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class MethodWithDefaultArgs_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SOMETHING = 1

    FIELDS = {
      SOMETHING => {:type => ::Thrift::Types::I32, :name => 'something', :default => 2}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class MethodWithDefaultArgs_result
    include ::Thrift::Struct, ::Thrift::Struct_Union

    FIELDS = {

    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class OnewayMethod_args
    include ::Thrift::Struct, ::Thrift::Struct_Union

    FIELDS = {

    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class OnewayMethod_result
    include ::Thrift::Struct, ::Thrift::Struct_Union

    FIELDS = {

    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

end

