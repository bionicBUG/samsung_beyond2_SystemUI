.class public final synthetic Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$U3iA3kXxQVSXTB0lhl8OWFGdblw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$U3iA3kXxQVSXTB0lhl8OWFGdblw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$U3iA3kXxQVSXTB0lhl8OWFGdblw;

    invoke-direct {v0}, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$U3iA3kXxQVSXTB0lhl8OWFGdblw;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$U3iA3kXxQVSXTB0lhl8OWFGdblw;->INSTANCE:Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$U3iA3kXxQVSXTB0lhl8OWFGdblw;

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

    invoke-static {p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->lambda$applyState$4(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
