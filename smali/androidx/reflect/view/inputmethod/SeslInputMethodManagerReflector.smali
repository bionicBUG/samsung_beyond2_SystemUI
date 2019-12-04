.class public Landroidx/reflect/view/inputmethod/SeslInputMethodManagerReflector;
.super Ljava/lang/Object;
.source "SeslInputMethodManagerReflector.java"


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

    .line 16
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Landroidx/reflect/view/inputmethod/SeslInputMethodManagerReflector;->mClass:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
