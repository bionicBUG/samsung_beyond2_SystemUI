.class public final synthetic Lcom/android/systemui/util/-$$Lambda$SystemUIAnalytics$6KirTHnNTsy0_5AfhgGqUMEQddc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/util/-$$Lambda$SystemUIAnalytics$6KirTHnNTsy0_5AfhgGqUMEQddc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/-$$Lambda$SystemUIAnalytics$6KirTHnNTsy0_5AfhgGqUMEQddc;

    invoke-direct {v0}, Lcom/android/systemui/util/-$$Lambda$SystemUIAnalytics$6KirTHnNTsy0_5AfhgGqUMEQddc;-><init>()V

    sput-object v0, Lcom/android/systemui/util/-$$Lambda$SystemUIAnalytics$6KirTHnNTsy0_5AfhgGqUMEQddc;->INSTANCE:Lcom/android/systemui/util/-$$Lambda$SystemUIAnalytics$6KirTHnNTsy0_5AfhgGqUMEQddc;

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

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {p1}, Lcom/android/systemui/util/SystemUIAnalytics;->lambda$prepareIdMap$1(Ljava/lang/reflect/Field;)V

    return-void
.end method
