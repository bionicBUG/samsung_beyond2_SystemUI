.class public final synthetic Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$vC3j6oWAgAB0Engxatl3BpvwvZA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$vC3j6oWAgAB0Engxatl3BpvwvZA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$vC3j6oWAgAB0Engxatl3BpvwvZA;

    invoke-direct {v0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$vC3j6oWAgAB0Engxatl3BpvwvZA;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$vC3j6oWAgAB0Engxatl3BpvwvZA;->INSTANCE:Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$vC3j6oWAgAB0Engxatl3BpvwvZA;

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

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {p1}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$showSmartViewTouchToast$4(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method
