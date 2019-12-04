.class public final synthetic Lcom/android/keyguard/-$$Lambda$CHie3P_26onfXpjSG9uFAp0KZgA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/-$$Lambda$CHie3P_26onfXpjSG9uFAp0KZgA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/-$$Lambda$CHie3P_26onfXpjSG9uFAp0KZgA;

    invoke-direct {v0}, Lcom/android/keyguard/-$$Lambda$CHie3P_26onfXpjSG9uFAp0KZgA;-><init>()V

    sput-object v0, Lcom/android/keyguard/-$$Lambda$CHie3P_26onfXpjSG9uFAp0KZgA;->INSTANCE:Lcom/android/keyguard/-$$Lambda$CHie3P_26onfXpjSG9uFAp0KZgA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onEmergencyCallAction()V

    return-void
.end method
