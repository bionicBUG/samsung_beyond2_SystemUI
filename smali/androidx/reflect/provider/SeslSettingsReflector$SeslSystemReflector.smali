.class public Landroidx/reflect/provider/SeslSettingsReflector$SeslSystemReflector;
.super Ljava/lang/Object;
.source "SeslSettingsReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/reflect/provider/SeslSettingsReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeslSystemReflector"
.end annotation


# static fields
.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Landroid/provider/Settings$System;

    sput-object v0, Landroidx/reflect/provider/SeslSettingsReflector$SeslSystemReflector;->mClass:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
