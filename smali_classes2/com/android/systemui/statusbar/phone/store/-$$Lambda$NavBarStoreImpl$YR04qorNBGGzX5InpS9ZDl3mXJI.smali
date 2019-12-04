.class public final synthetic Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$YR04qorNBGGzX5InpS9ZDl3mXJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$YR04qorNBGGzX5InpS9ZDl3mXJI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$YR04qorNBGGzX5InpS9ZDl3mXJI;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$YR04qorNBGGzX5InpS9ZDl3mXJI;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$YR04qorNBGGzX5InpS9ZDl3mXJI;->INSTANCE:Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$YR04qorNBGGzX5InpS9ZDl3mXJI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    check-cast p2, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->lambda$handleEvent$17(Lcom/android/systemui/statusbar/phone/bandaid/Band;Lcom/android/systemui/statusbar/phone/bandaid/Band;)I

    move-result p0

    return p0
.end method
