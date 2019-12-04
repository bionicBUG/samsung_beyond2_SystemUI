.class public Landroidx/reflect/os/SeslPerfManagerReflector;
.super Ljava/lang/Object;
.source "SeslPerfManagerReflector.java"


# static fields
.field private static mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const-string v0, "com.samsung.android.os.SemPerfManager"

    .line 20
    sput-object v0, Landroidx/reflect/os/SeslPerfManagerReflector;->mClassName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "android.os.DVFSHelper"

    .line 22
    sput-object v0, Landroidx/reflect/os/SeslPerfManagerReflector;->mClassName:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
