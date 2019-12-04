.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSTileHost$3G8BYaem2Q8gA1lpcQ1RBiw2oGo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSTileHost$3G8BYaem2Q8gA1lpcQ1RBiw2oGo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$3G8BYaem2Q8gA1lpcQ1RBiw2oGo;

    invoke-direct {v0}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$3G8BYaem2Q8gA1lpcQ1RBiw2oGo;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$3G8BYaem2Q8gA1lpcQ1RBiw2oGo;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSTileHost$3G8BYaem2Q8gA1lpcQ1RBiw2oGo;

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

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-static {p1}, Lcom/android/systemui/qs/QSTileHost;->lambda$dump$11(Lcom/android/systemui/plugins/qs/QSTile;)Z

    move-result p0

    return p0
.end method
