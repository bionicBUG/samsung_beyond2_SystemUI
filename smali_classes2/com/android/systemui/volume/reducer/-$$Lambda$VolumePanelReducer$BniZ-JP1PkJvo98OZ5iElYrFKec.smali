.class public final synthetic Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$BniZ-JP1PkJvo98OZ5iElYrFKec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$BniZ-JP1PkJvo98OZ5iElYrFKec;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$BniZ-JP1PkJvo98OZ5iElYrFKec;

    invoke-direct {v0}, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$BniZ-JP1PkJvo98OZ5iElYrFKec;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$BniZ-JP1PkJvo98OZ5iElYrFKec;->INSTANCE:Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$BniZ-JP1PkJvo98OZ5iElYrFKec;

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

    invoke-static {p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$resetActiveState$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method
