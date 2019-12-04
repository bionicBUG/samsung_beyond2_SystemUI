.class public final synthetic Lcom/samsung/systemui/splugins/-$$Lambda$SVersionInfo$yFkmWUmXIqM7tQdyLPOyh7eWrpA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/systemui/splugins/-$$Lambda$SVersionInfo$yFkmWUmXIqM7tQdyLPOyh7eWrpA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/systemui/splugins/-$$Lambda$SVersionInfo$yFkmWUmXIqM7tQdyLPOyh7eWrpA;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/-$$Lambda$SVersionInfo$yFkmWUmXIqM7tQdyLPOyh7eWrpA;-><init>()V

    sput-object v0, Lcom/samsung/systemui/splugins/-$$Lambda$SVersionInfo$yFkmWUmXIqM7tQdyLPOyh7eWrpA;->INSTANCE:Lcom/samsung/systemui/splugins/-$$Lambda$SVersionInfo$yFkmWUmXIqM7tQdyLPOyh7eWrpA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Class;

    check-cast p2, Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    invoke-static {p1, p2}, Lcom/samsung/systemui/splugins/SVersionInfo;->lambda$checkVersion$1(Ljava/lang/Class;Lcom/samsung/systemui/splugins/SVersionInfo$Version;)V

    return-void
.end method
