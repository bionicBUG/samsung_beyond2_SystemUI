.class public final synthetic Lcom/android/keyguard/biometrics/-$$Lambda$LLz30GfLzO6eB_6oPJqqQOqA5KA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$LLz30GfLzO6eB_6oPJqqQOqA5KA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/biometrics/-$$Lambda$LLz30GfLzO6eB_6oPJqqQOqA5KA;

    invoke-direct {v0}, Lcom/android/keyguard/biometrics/-$$Lambda$LLz30GfLzO6eB_6oPJqqQOqA5KA;-><init>()V

    sput-object v0, Lcom/android/keyguard/biometrics/-$$Lambda$LLz30GfLzO6eB_6oPJqqQOqA5KA;->INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$LLz30GfLzO6eB_6oPJqqQOqA5KA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
