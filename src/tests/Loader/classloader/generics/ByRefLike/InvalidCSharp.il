// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

.assembly extern System.Console { .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A ) }
.assembly extern System.Runtime { .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A ) }

.assembly InvalidCSharp { }

//
// Begin invalid
//

.class public sequential ansi sealed beforefieldinit InvalidCSharp.GenericClass_Invalid`1<T>
    extends [System.Runtime]System.Object
{
    .method public hidebysig specialname rtspecialname
        instance void .ctor () cil managed
    {
        ldarg.0
        call instance void [System.Runtime]System.Object::.ctor()
        ret
    }
}

.class interface public auto ansi abstract InvalidCSharp.GenericInterface_Invalid`1<T>
{
}

.class public sequential ansi sealed beforefieldinit InvalidCSharp.GenericValueType_Invalid`1<T>
    extends [System.Runtime]System.ValueType
{
}

.class public sequential ansi sealed beforefieldinit InvalidCSharp.GenericByRefLike_Invalid`1<T>
    extends [System.Runtime]System.ValueType
{
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = (
        01 00 00 00
    )
}

//
// End invalid
//

.class public sequential ansi beforefieldinit InvalidCSharp.GenericClass_Over`1<byreflike T>
    extends [System.Runtime]System.Object
{
    .method public hidebysig specialname rtspecialname
        instance void .ctor () cil managed
    {
        ldarg.0
        call instance void [System.Runtime]System.Object::.ctor()
        ret
    }
}

.class interface public auto ansi abstract InvalidCSharp.GenericInterface_Over`1<byreflike T>
{
}

.class public sequential ansi sealed beforefieldinit InvalidCSharp.GenericValueType_Over`1<byreflike T>
    extends [System.Runtime]System.ValueType
{
}

.class public sequential ansi sealed beforefieldinit InvalidCSharp.GenericByRefLike_Over`1<byreflike T>
    extends [System.Runtime]System.ValueType
{
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = (
        01 00 00 00
    )

    .field public !T Field

    .method public hidebysig
        instance !T CreateDefaultInstance() cil managed
    {
        .locals init (
            [0] !T
        )
        ldloca.s 0
        initobj !T
        ldloc.0
        ret
    }

    .method public hidebysig
        instance class [System.Runtime]System.Type GetGenericType() cil managed
    {
        ldtoken !T
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        ret
    }

    .method public hidebysig
        instance bool BoxUnboxAny(!T) cil managed
    {
        ldarg.1
        // Begin sequence
            box !T
            unbox.any !T
        // End sequence
        pop
        ldc.i4.1
        ret
    }

    .method public hidebysig
        instance bool BoxBranch(!T) cil managed
    {
        ldarg.1
        // Begin sequence
            box !T
            brfalse.s NEXT_1
        // End sequence
        NEXT_1:

        ldarg.1
        // Begin sequence
            box !T
            brfalse NEXT_2
        // End sequence
        NEXT_2:

        ldarg.1
        // Begin sequence
            box !T
            brtrue.s NEXT_3
        // End sequence
        NEXT_3:

        ldarg.1
        // Begin sequence
            box !T
            brtrue NEXT_4
        // End sequence
        NEXT_4:

        ldc.i4.1
        ret
    }

    .method public hidebysig
        instance bool BoxBranchToOther<byreflike U>(!T) cil managed
    {
        ldarg.1
        // Begin sequence
            box !!U
            brfalse.s NEXT_1
        // End sequence
        NEXT_1:

        ldarg.1
        // Begin sequence
            box !!U
            brfalse NEXT_2
        // End sequence
        NEXT_2:

        ldarg.1
        // Begin sequence
            box !!U
            brtrue.s NEXT_3
        // End sequence
        NEXT_3:

        ldarg.1
        // Begin sequence
            box !!U
            brtrue NEXT_4
        // End sequence
        NEXT_4:

        ldc.i4.1
        ret
    }

    .method public hidebysig
        instance bool BoxBranch_WithSideEffects(!T&) cil managed
    {
        ldarg.1
        // Begin sequence
            ldobj !T // Side-effect
            box !T
            brfalse.s NEXT_1
        // End sequence
        NEXT_1:

        ldarg.1
        // Begin sequence
            ldobj !T // Side-effect
            box !T
            brfalse NEXT_2
        // End sequence
        NEXT_2:

        ldarg.1
        // Begin sequence
            ldobj !T // Side-effect
            box !T
            brtrue.s NEXT_3
        // End sequence
        NEXT_3:

        ldarg.1
        // Begin sequence
            ldobj !T // Side-effect
            box !T
            brtrue NEXT_4
        // End sequence
        NEXT_4:

        ldc.i4.1
        ret
    }

    .method public hidebysig
        instance bool BoxIsinstUnboxAny(!T) cil managed
    {
        ldarg.1
        // Begin sequence
            box !T
            isinst ByRefLikeType
            unbox.any ByRefLikeType
        // End sequence
        pop
        ldc.i4.1
        ret
    }

    .method public hidebysig
        instance bool BoxIsinstUnboxAny_Mismatch(!T) cil managed
    {
        ldarg.1
        // Begin sequence
            box !T
            isinst ByRefLikeType2
            unbox.any ByRefLikeType2
        // End sequence
        pop
        ldc.i4.0
        ret
    }

    .method public hidebysig
        instance bool BoxIsinstBranch(!T) cil managed
    {
        ldarg.1
        // Begin sequence
            box !T
            isinst ByRefLikeType
            brfalse.s NEXT_1
        // End sequence
        NEXT_1:

        ldarg.1
        // Begin sequence
            box !T
            isinst ByRefLikeType
            brfalse NEXT_2
        // End sequence
        NEXT_2:

        ldarg.1
        // Begin sequence
            box !T
            isinst ByRefLikeType
            brtrue.s NEXT_3
        // End sequence
        NEXT_3:

        ldarg.1
        // Begin sequence
            box !T
            isinst ByRefLikeType
            brtrue NEXT_4
        // End sequence
        NEXT_4:

        ldc.i4.1
        ret
    }

    .method public hidebysig
        instance bool BoxIsinstBranch_WithSideEffects(!T&) cil managed
    {
        ldarg.1
        // Begin sequence
            ldobj !T // Side-effect
            box !T
            isinst ByRefLikeType
            brfalse.s NEXT_1
        // End sequence
        NEXT_1:

        ldarg.1
        // Begin sequence
            ldobj !T // Side-effect
            box !T
            isinst ByRefLikeType
            brfalse NEXT_2
        // End sequence
        NEXT_2:

        ldarg.1
        // Begin sequence
            ldobj !T // Side-effect
            box !T
            isinst ByRefLikeType
            brtrue.s NEXT_3
        // End sequence
        NEXT_3:

        ldarg.1
        // Begin sequence
            ldobj !T // Side-effect
            box !T
            isinst ByRefLikeType
            brtrue NEXT_4
        // End sequence
        NEXT_4:

        ldc.i4.1
        ret
    }

    .method public hidebysig
        instance bool BoxIsinstBranch_CheckForSimpleInterface<byreflike U>(!!U) cil managed
    {
        .locals init (
            [0] !!U
        )

        ldarg.1
        box !!U
        isinst InvalidCSharp.SimpleInterface
        brtrue.s IS_SIMPLEINTERFACE

        ldstr "All types should implement SimpleInterface"
        newobj instance void [System.Runtime]System.Exception::.ctor(string)
        throw

    IS_SIMPLEINTERFACE:
        ldarg.1
        stloc.0
        ldloca.s 0
        constrained. !!U
        callvirt instance int32 InvalidCSharp.SimpleInterface::Method()
        ret
    }

    .method public hidebysig
        instance bool AllocArrayOfT() cil managed aggressiveinlining
    {
        ldc.i4.1
        newarr !T
        ldnull
        cgt.un
        ret
    }

    .method public hidebysig
        instance bool InstanceOfT(
            object o
        ) cil managed
    {
        ldarg.1
        isinst !T
        ldnull
        cgt.un
        ret
    }

    .method public hidebysig
        instance void CastToT(
            object o
        ) cil managed
    {
        ldarg.1
        castclass !T
        pop
        ret
    }

    .method public hidebysig
        instance void UnboxToT(
            object o
        ) cil managed
    {
        ldarg.1
        unbox.any !T
        pop
        ret
    }
}

.class public sequential ansi sealed beforefieldinit InvalidCSharp.GenericClass_WithStaticField`1<byreflike T>
    extends [System.Runtime]System.Object
{
    .method public hidebysig specialname rtspecialname
        instance void .ctor () cil managed
    {
        .locals init (
            [0] !T,
            [1] !T
        )

        ldarg.0
        call instance void [System.Runtime]System.Object::.ctor()

        ldloca.s 0
        initobj !T

        ldloc.0
        stsfld !0 class InvalidCSharp.GenericClass_WithStaticField`1<!T>::StaticField
        ldsfld !0 class InvalidCSharp.GenericClass_WithStaticField`1<!T>::StaticField
        stloc.1
        ret
    }

    .field public static class InvalidCSharp.GenericClass_Over`1<!T> StaticField1
    .field public static !T StaticField
}

.class public sequential ansi sealed beforefieldinit InvalidCSharp.GenericClass_IndependentConstraints`2<byreflike T, (!T) U>
    extends [System.Runtime]System.Object
{
    .method public hidebysig specialname rtspecialname
        instance void .ctor () cil managed
    {
        ldarg.0
        call instance void [System.Runtime]System.Object::.ctor()
        ret
    }
}

.class public sequential ansi sealed beforefieldinit ByRefLikeType
    extends [System.Runtime]System.ValueType
{
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = (
        01 00 00 00
    )
}

.class public sequential ansi sealed beforefieldinit ByRefLikeType2
    extends [System.Runtime]System.ValueType
{
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = (
        01 00 00 00
    )
}

.class public sequential ansi sealed beforefieldinit ByRefLikeType`1<T>
    extends [System.Runtime]System.ValueType
{
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = (
        01 00 00 00
    )
}

.class interface public auto ansi abstract InvalidCSharp.SimpleInterface
{
    .method public hidebysig newslot abstract virtual
        instance int32 Method() cil managed
    {
    }
}

.class public sequential ansi sealed beforefieldinit ByRefLikeTypeWithInterface
    extends [System.Runtime]System.ValueType
    implements InvalidCSharp.SimpleInterface
{
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = (
        01 00 00 00
    )

    .method public final hidebysig newslot virtual
        instance int32 Method() cil managed
    {
        ldc.i4.1
        ret
    }
}

.class interface public auto ansi abstract InvalidCSharp.DefaultInterface
{
    .method public hidebysig newslot virtual
        instance int32 Method() cil managed
    {
        ldc.i4.0
        ret
    }
}

.class public sequential ansi sealed beforefieldinit RS_DI1
    extends [System.Runtime]System.ValueType
    implements InvalidCSharp.DefaultInterface
{
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = (
        01 00 00 00
    )
}

.class public sequential ansi sealed beforefieldinit RS_DI2
    extends [System.Runtime]System.ValueType
    implements InvalidCSharp.DefaultInterface
{
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = (
        01 00 00 00
    )

    .method public hidebysig newslot virtual
        instance int32 Method() cil managed
    {
        ldc.i4.1
        ret
    }
}

.class public sequential ansi sealed beforefieldinit RegularValueType
    extends [System.Runtime]System.ValueType
{
}

.class public auto ansi beforefieldinit ClassWithInterface
    extends [System.Runtime]System.Object
    implements InvalidCSharp.SimpleInterface
{
    .method public hidebysig specialname rtspecialname
        instance void .ctor () cil managed
    {
        ldarg.0
        call instance void [System.Runtime]System.Object::.ctor()
        ret
    }

    .method public final hidebysig newslot virtual
        instance int32 Method() cil managed
    {
        ldc.i4.0
        ret
    }
}

// Generic substitution of allow-byreflike with allow-byreflike
.class interface public auto ansi abstract InvalidCSharp.GenericDerivedInterface_OverByRef`1<byreflike T>
    implements class InvalidCSharp.GenericInterface_Over`1<!T>
{
}

.class public sequential ansi sealed beforefieldinit InvalidCSharp.GenericDerivedClass_OverByRef`1<byreflike T>
    extends class InvalidCSharp.GenericClass_Over`1<!T>
{
}

.class public sequential ansi sealed beforefieldinit InvalidCSharp.GenericValueTypeWrapper_OverByRef`1<byreflike T>
    extends [System.Runtime]System.ValueType
{
    .field public valuetype InvalidCSharp.GenericValueType_Over`1<!T> fld;
}

.class public sequential ansi sealed beforefieldinit InvalidCSharp.GenericClassWithMethods_OverByRef`1<byreflike T>
    extends [System.Runtime]System.Object
{
    .method public hidebysig static
        string InstantiateWithTypeLevelTypeParameter() cil managed
    {
        ldtoken class InvalidCSharp.GenericClass_Over`1<!T>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }

    .method public hidebysig static
        string InstantiateWithMethodLevelTypeParameter<byreflike U>() cil managed
    {
        ldtoken class InvalidCSharp.GenericClass_Over`1<!!U>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }
}

// Generic substitution of allow-byreflike with non-allow-byreflike
.class interface public auto ansi abstract InvalidCSharp.GenericDerivedInterface_Over`1<T>
    implements class InvalidCSharp.GenericInterface_Over`1<!T>
{
}

.class public sequential ansi sealed beforefieldinit InvalidCSharp.GenericDerivedClass_Over`1<T>
    extends class InvalidCSharp.GenericClass_Over`1<!T>
{
}

.class public sequential ansi sealed beforefieldinit InvalidCSharp.GenericValueTypeWrapper_Over`1<T>
    extends [System.Runtime]System.ValueType
{
    .field public valuetype InvalidCSharp.GenericValueType_Over`1<!T> fld;
}

.class public sequential ansi sealed beforefieldinit InvalidCSharp.GenericClassWithMethods_Over`1< T>
    extends [System.Runtime]System.Object
{
    .method public hidebysig static
        string InstantiateWithTypeLevelTypeParameter() cil managed
    {
        ldtoken class InvalidCSharp.GenericClass_Over`1<!T>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }

    .method public hidebysig static
        string InstantiateWithMethodLevelTypeParameter<U>() cil managed
    {
        ldtoken class InvalidCSharp.GenericClass_Over`1<!!U>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }
}

// Invalid generic substitution of non-allow-byreflike with allow-byreflike

.class public sequential ansi sealed beforefieldinit InvalidCSharp.GenericValueTypeWrapper_Invalid`1<byreflike T>
    extends [System.Runtime]System.ValueType
{
    .field public valuetype InvalidCSharp.GenericValueType_Invalid`1<!T> fld;
}

// Entry points

.class public auto ansi abstract sealed beforefieldinit Exec
    extends [System.Runtime]System.Object
{
    .method public hidebysig static
        string GenericClass() cil managed
    {
        ldtoken class InvalidCSharp.GenericClass_Over`1<valuetype ByRefLikeType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }
    .method public hidebysig static
        string GenericInterface() cil managed
    {
        ldtoken class InvalidCSharp.GenericInterface_Over`1<valuetype ByRefLikeType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }
    .method public hidebysig static
        string GenericValueType() cil managed
    {
        ldtoken valuetype InvalidCSharp.GenericValueType_Over`1<valuetype ByRefLikeType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }
    .method public hidebysig static
        string GenericByRefLike() cil managed
    {
        ldtoken valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }

    .method public hidebysig static
        string GenericClass_Invalid() cil managed
    {
        ldtoken class InvalidCSharp.GenericClass_Invalid`1<valuetype ByRefLikeType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }
    .method public hidebysig static
        string GenericInterface_Invalid() cil managed
    {
        ldtoken class InvalidCSharp.GenericInterface_Invalid`1<valuetype ByRefLikeType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }
    .method public hidebysig static
        string GenericValueType_Invalid() cil managed
    {
        ldtoken valuetype InvalidCSharp.GenericValueType_Invalid`1<valuetype ByRefLikeType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }
    .method public hidebysig static
        string GenericByRefLike_Invalid() cil managed
    {
        ldtoken valuetype InvalidCSharp.GenericByRefLike_Invalid`1<valuetype ByRefLikeType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }
    .method public hidebysig static
        class [System.Runtime]System.Type GenericByRefLike_ConstraintsAreIndependent_Int32_Int32() cil managed
    {
        newobj instance void class InvalidCSharp.GenericClass_IndependentConstraints`2<int32, int32>::.ctor()
        callvirt instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
        ret
    }
    .method public hidebysig static
        class [System.Runtime]System.Type GenericByRefLike_ConstraintsAreIndependent_Interface_ByRefLike_Invalid() cil managed
    {
        newobj instance void class InvalidCSharp.GenericClass_IndependentConstraints`2<class InvalidCSharp.SimpleInterface, valuetype ByRefLikeTypeWithInterface>::.ctor()
        callvirt instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
        ret
    }
    .method public hidebysig static
        class [System.Runtime]System.Type GenericByRefLike_ConstraintsAreIndependent_ByRefLike_ByRefLike_Invalid() cil managed
    {
        newobj instance void class InvalidCSharp.GenericClass_IndependentConstraints`2<valuetype ByRefLikeTypeWithInterface, valuetype ByRefLikeTypeWithInterface>::.ctor()
        callvirt instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
        ret
    }

    .method public hidebysig static
        string CreateDefaultInstance() cil managed
    {
        .locals init (
            [0] valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        )

        ldloca.s 0
        initobj valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        ldloca.s 0
        call instance !0 valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::CreateDefaultInstance()
        pop
        ldloca.s 0
        call instance class [System.Runtime]System.Type valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::GetGenericType()
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }

    .method public hidebysig static
        object BoxAsObject<byreflike Y>(!!Y) cil managed noinlining
    {
        ldarg.0
        box !!Y
        ret
    }

    .method public hidebysig static
        void BoxUnboxAny() cil managed
    {
        .locals init (
            [0] valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        )

        ldloca.s 0
        initobj valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        ldloca.s 0
        ldloc 0
        ldfld !0 valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::Field
        call instance bool valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::BoxUnboxAny(!0)
        brtrue.s NEXT_1

        ldstr "Failed: BoxUnboxAny for ByRefLikeType"
        newobj instance void [System.Runtime]System.Exception::.ctor(string)
        throw

    NEXT_1:
        ret
    }

    .method public hidebysig static
        void BoxBranch() cil managed
    {
        .locals init (
            [0] valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        )

        ldloca.s 0
        initobj valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>

        ldloca.s 0
        ldloc 0
        ldfld !0 valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::Field
        call instance bool valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::BoxBranch(!0)
        brtrue.s NEXT_1

        ldstr "Failed: BoxBranch for ByRefLikeType"
        newobj instance void [System.Runtime]System.Exception::.ctor(string)
        throw

    NEXT_1:
        ldloca.s 0
        ldloc 0
        ldfld !0 valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::Field
        call instance bool valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::BoxBranchToOther<valuetype ByRefLikeTypeWithInterface>(!0)
        brtrue.s NEXT_2

        ldstr "Failed: BoxBranchToOther for ByRefLikeTypeWithInterface"
        newobj instance void [System.Runtime]System.Exception::.ctor(string)
        throw

    NEXT_2:
        ldloca.s 0
        ldloc 0
        ldfld !0 valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::Field
        call instance bool valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::BoxBranchToOther<valuetype RegularValueType>(!0)
        brtrue.s NEXT_3

        ldstr "Failed: BoxBranchToOther for RegularValueType"
        newobj instance void [System.Runtime]System.Exception::.ctor(string)
        throw

    NEXT_3:
        ldloca.s 0
        ldloca.s 0
        ldflda !0 valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::Field
        call instance bool valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::BoxBranch_WithSideEffects(!0&)
        brtrue.s NEXT_4

        ldstr "Failed: BoxBranch_WithSideEffects for ByRefLikeType"
        newobj instance void [System.Runtime]System.Exception::.ctor(string)
        throw

    NEXT_4:
        ret
    }

    .method public hidebysig static
        void BoxIsinstUnboxAny() cil managed
    {
        .locals init (
            [0] valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        )

        ldloca.s 0
        initobj valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        ldloca.s 0
        ldloc 0
        ldfld !0 valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::Field
        call instance bool valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::BoxIsinstUnboxAny(!0)
        brtrue.s NEXT_1

        ldstr "Failed: BoxIsinstUnboxAny for ByRefLikeType"
        newobj instance void [System.Runtime]System.Exception::.ctor(string)
        throw

    NEXT_1:
        ret
    }

    .method public hidebysig static
        bool BoxIsinstUnboxAny_Mismatch() cil managed
    {
        .locals init (
            [0] valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        )

        ldloca.s 0
        initobj valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        ldloca.s 0
        ldloc 0
        ldfld !0 valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::Field
        call instance bool valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::BoxIsinstUnboxAny_Mismatch(!0)
        ret
    }

    .method public hidebysig static
        void BoxIsinstBranchVarious() cil managed
    {
        .locals init (
            [0] valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>,
            [1] valuetype ByRefLikeTypeWithInterface
        )

        ldloca.s 0
        initobj valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>

        ldloca.s 0
        ldloc 0
        ldfld !0 valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::Field
        call instance bool valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::BoxIsinstBranch(!0)
        brtrue.s NEXT_1

        ldstr "Failed: BoxIsinstBranch for ByRefLikeType"
        newobj instance void [System.Runtime]System.Exception::.ctor(string)
        throw

    NEXT_1:
        ldloca.s 0
        ldloca.s 0
        ldflda !0 valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::Field
        call instance bool valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::BoxIsinstBranch_WithSideEffects(!0&)
        brtrue.s NEXT_2

        ldstr "Failed: BoxIsinstBranch_WithSideEffects for ByRefLikeType"
        newobj instance void [System.Runtime]System.Exception::.ctor(string)
        throw

    NEXT_2:
        ldloca.s 0
        ldloca.s 1
        initobj valuetype ByRefLikeTypeWithInterface
        ldloc.1
        call instance bool valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::
            BoxIsinstBranch_CheckForSimpleInterface<valuetype ByRefLikeTypeWithInterface>(!!0)
        brtrue.s NEXT_3

        ldstr "Failed: BoxIsinstBranch_CheckForSimpleInterface for ByRefLikeTypeWithInterface"
        newobj instance void [System.Runtime]System.Exception::.ctor(string)
        throw

    NEXT_3:
        ldloca.s 0
        newobj instance void ClassWithInterface::.ctor()
        call instance bool valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::
            BoxIsinstBranch_CheckForSimpleInterface<class ClassWithInterface>(!!0)
        brfalse.s NEXT_4

        ldstr "The above is expected to be false since ClassWithInterface's interface implementation return 0."
        newobj instance void [System.Runtime]System.Exception::.ctor(string)
        throw

    NEXT_4:
        ret
    }

    .method public hidebysig static
        bool BoxIsinstBranch<byreflike T, byreflike U>(!!T) cil managed noinlining
    {
        ldarg.0
        // Begin sequence
            box !!T
            isinst !!U
            brfalse.s IS_FALSE
        // End sequence

        ldc.i4.1
        ret

    IS_FALSE:
        ldc.i4.0
        ret
    }

    .method public hidebysig static
        bool AllocArray<byreflike Y>() cil managed noinlining
    {
        ldc.i4.1
        newarr !!Y
        ldnull
        cgt.un
        ret
    }

    .method public hidebysig static
        bool AllocMultiDimArray<byreflike Y>() cil managed noinlining
    {
        ldc.i4.1
        ldc.i4.1
        newobj instance void !!Y[0..., 0...]::.ctor(int32, int32)
        ldnull
        cgt.un
        ret
    }

    .method public hidebysig static
        string GenericClassWithStaticField_Invalid() cil managed
    {
        ldtoken class InvalidCSharp.GenericClass_WithStaticField`1<valuetype ByRefLikeType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }

    .method public hidebysig static
        string ConstrainedCallVirtToString<byreflike T>(!!T t) cil managed noinlining
    {
        ldarga.s 0
        constrained. !!T
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }

    .method public hidebysig static
        int32 ConstrainedCallVirtMethod<byreflike (InvalidCSharp.DefaultInterface) T>(!!T t) cil managed noinlining
    {
        ldarga.s 0
        constrained. !!T
        callvirt instance int32 InvalidCSharp.DefaultInterface::Method()
        ret
    }

    .method public hidebysig static
        int32 ConstrainedCallVirtMethod<byreflike (InvalidCSharp.DefaultInterface) T>(!!T t, bool skipCall) cil managed noinlining
    {
        ldarg.1
        brfalse.s CALL
        ldc.i4.m1
        ret

        CALL:
        ldarga.s 0
        constrained. !!T
        callvirt instance int32 InvalidCSharp.DefaultInterface::Method()
        ret
    }

    .method public hidebysig static
        bool InstanceOfT(object) cil managed
    {
        .locals init (
            [0] valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        )

        ldloca.s 0
        initobj valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        ldloca.s 0
        ldarg.0
        call instance bool valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::InstanceOfT(object)
        ret
    }

    .method public hidebysig static
        void CastToT(object) cil managed
    {
        .locals init (
            [0] valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        )

        ldloca.s 0
        initobj valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        ldloca.s 0
        ldarg.0
        call instance void valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::CastToT(object)
        ret
    }

    .method public hidebysig static
        void UnboxToT(object) cil managed
    {
        .locals init (
            [0] valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        )

        ldloca.s 0
        initobj valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        ldloca.s 0
        ldarg.0
        call instance void valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::UnboxToT(object)
        ret
    }

    .method public hidebysig static
        bool TypeLoadExceptionAvoidsInline(bool) cil managed noinlining
    {
        .locals init (
            [0] valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        )

        ldloca.s 0
        initobj valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>
        ldarg.0
        brfalse.s DONTCALL

        ldloca.s 0
        call instance bool valuetype InvalidCSharp.GenericByRefLike_Over`1<valuetype ByRefLikeType>::AllocArrayOfT()
        br.s DONE

        // Negate the input and return
        DONTCALL: ldarg.0
        ldc.i4.0
        ceq

        DONE: ret
    }

    .method public hidebysig static
        string TypeSubstitutionInterfaceImplementationAllowByRefLike() cil managed
    {
        ldtoken class InvalidCSharp.GenericDerivedInterface_OverByRef`1<valuetype ByRefLikeType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }

    .method public hidebysig static
        string TypeSubstitutionInheritanceAllowByRefLike() cil managed
    {
        ldtoken class InvalidCSharp.GenericDerivedClass_OverByRef`1<valuetype ByRefLikeType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }

    .method public hidebysig static
        string TypeSubstitutionFieldAllowByRefLike() cil managed
    {
        ldtoken valuetype InvalidCSharp.GenericValueTypeWrapper_OverByRef`1<valuetype ByRefLikeType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }

    .method public hidebysig static
        string TypeSubstitutionTypeParameterInMethod() cil managed
    {
        call string class InvalidCSharp.GenericClassWithMethods_OverByRef`1<valuetype ByRefLikeType>::InstantiateWithTypeLevelTypeParameter()
        ret
    }

    .method public hidebysig static
        string TypeSubstitutionMethodTypeParameterInMethod() cil managed
    {
        call string class InvalidCSharp.GenericClassWithMethods_OverByRef`1<valuetype ByRefLikeType>::InstantiateWithMethodLevelTypeParameter<valuetype ByRefLikeType>()
        ret
    }

    .method public hidebysig static
        string TypeSubstitutionInterfaceImplementationNonByRefLike() cil managed
    {
        ldtoken class InvalidCSharp.GenericDerivedInterface_Over`1<valuetype RegularValueType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }

    .method public hidebysig static
        string TypeSubstitutionInheritanceNonByRefLike() cil managed
    {
        ldtoken class InvalidCSharp.GenericDerivedClass_Over`1<valuetype RegularValueType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }

    .method public hidebysig static
        string TypeSubstitutionFieldNonByRefLike() cil managed
    {
        ldtoken valuetype InvalidCSharp.GenericValueTypeWrapper_Over`1<valuetype RegularValueType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }

    .method public hidebysig static
        string TypeSubstitutionFieldAllowNonByRefLikeIntoNonByRefLike() cil managed
    {
        ldtoken valuetype InvalidCSharp.GenericValueTypeWrapper_Invalid`1<valuetype RegularValueType>
        call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        callvirt instance string [System.Runtime]System.Object::ToString()
        ret
    }
}