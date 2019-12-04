.class public Landroidx/reflect/media/SeslRingtoneManagerReflector;
.super Ljava/lang/Object;
.source "SeslRingtoneManagerReflector.java"


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

    .line 18
    const-class v0, Landroid/media/RingtoneManager;

    sput-object v0, Landroidx/reflect/media/SeslRingtoneManagerReflector;->mClass:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
