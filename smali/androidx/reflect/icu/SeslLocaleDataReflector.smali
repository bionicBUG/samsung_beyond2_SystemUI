.class public Landroidx/reflect/icu/SeslLocaleDataReflector;
.super Ljava/lang/Object;
.source "SeslLocaleDataReflector.java"


# static fields
.field private static mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, "com.samsung.sesl.icu.SemLocaleData"

    .line 26
    sput-object v0, Landroidx/reflect/icu/SeslLocaleDataReflector;->mClassName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "libcore.icu.LocaleData"

    .line 28
    sput-object v0, Landroidx/reflect/icu/SeslLocaleDataReflector;->mClassName:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
