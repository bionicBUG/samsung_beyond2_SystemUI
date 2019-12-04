.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeBar$jF7JkF0Wl_PQZlF2TY-xhDgJjeM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeBar$jF7JkF0Wl_PQZlF2TY-xhDgJjeM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeBar$jF7JkF0Wl_PQZlF2TY-xhDgJjeM;

    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeBar$jF7JkF0Wl_PQZlF2TY-xhDgJjeM;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeBar$jF7JkF0Wl_PQZlF2TY-xhDgJjeM;->INSTANCE:Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeBar$jF7JkF0Wl_PQZlF2TY-xhDgJjeM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->lambda$initResources$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
