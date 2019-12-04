.class public final synthetic Lcom/android/systemui/appdock/model/-$$Lambda$AppDockAppListLoader$iB9qF1uYAm9pY1UEnZCJIPfmJpM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/appdock/model/-$$Lambda$AppDockAppListLoader$iB9qF1uYAm9pY1UEnZCJIPfmJpM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/appdock/model/-$$Lambda$AppDockAppListLoader$iB9qF1uYAm9pY1UEnZCJIPfmJpM;

    invoke-direct {v0}, Lcom/android/systemui/appdock/model/-$$Lambda$AppDockAppListLoader$iB9qF1uYAm9pY1UEnZCJIPfmJpM;-><init>()V

    sput-object v0, Lcom/android/systemui/appdock/model/-$$Lambda$AppDockAppListLoader$iB9qF1uYAm9pY1UEnZCJIPfmJpM;->INSTANCE:Lcom/android/systemui/appdock/model/-$$Lambda$AppDockAppListLoader$iB9qF1uYAm9pY1UEnZCJIPfmJpM;

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

    check-cast p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-static {p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->lambda$getGridAppList$0(Lcom/android/systemui/appdock/model/AppDockItemInfo;)Z

    move-result p0

    return p0
.end method
