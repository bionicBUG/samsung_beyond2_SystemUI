.class public final synthetic Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$rc_u_iBff4ZUT0n7PUuN-k7xT1g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$rc_u_iBff4ZUT0n7PUuN-k7xT1g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$rc_u_iBff4ZUT0n7PUuN-k7xT1g;

    invoke-direct {v0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$rc_u_iBff4ZUT0n7PUuN-k7xT1g;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$rc_u_iBff4ZUT0n7PUuN-k7xT1g;->INSTANCE:Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$rc_u_iBff4ZUT0n7PUuN-k7xT1g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {p1}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$showSmartViewTouchToast$5(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
