.class public final synthetic Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$ofCcZg94FsomyxQmSNLwR3Asvns;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$ofCcZg94FsomyxQmSNLwR3Asvns;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$ofCcZg94FsomyxQmSNLwR3Asvns;

    invoke-direct {v0}, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$ofCcZg94FsomyxQmSNLwR3Asvns;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$ofCcZg94FsomyxQmSNLwR3Asvns;->INSTANCE:Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$ofCcZg94FsomyxQmSNLwR3Asvns;

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

    invoke-static {p1}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$isActiveNow$7(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
