.class public Landroidx/reflect/widget/SeslAdapterViewReflector;
.super Ljava/lang/Object;
.source "SeslAdapterViewReflector.java"


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

    .line 19
    const-class v0, Landroid/widget/AdapterView;

    sput-object v0, Landroidx/reflect/widget/SeslAdapterViewReflector;->mClass:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
