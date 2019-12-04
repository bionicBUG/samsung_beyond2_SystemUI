.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$hOu5EpideKFxvp13MOGmN5nhzUA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$hOu5EpideKFxvp13MOGmN5nhzUA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$hOu5EpideKFxvp13MOGmN5nhzUA;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/-$$Lambda$hOu5EpideKFxvp13MOGmN5nhzUA;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/-$$Lambda$hOu5EpideKFxvp13MOGmN5nhzUA;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$hOu5EpideKFxvp13MOGmN5nhzUA;

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

    check-cast p1, Landroid/view/Display;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
