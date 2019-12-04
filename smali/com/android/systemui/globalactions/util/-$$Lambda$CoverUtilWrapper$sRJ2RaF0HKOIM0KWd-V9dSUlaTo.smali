.class public final synthetic Lcom/android/systemui/globalactions/util/-$$Lambda$CoverUtilWrapper$sRJ2RaF0HKOIM0KWd-V9dSUlaTo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/globalactions/util/CoverUtilWrapper;

.field private final synthetic f$1:Lcom/samsung/android/globalactions/util/CoverStateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/util/CoverStateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/-$$Lambda$CoverUtilWrapper$sRJ2RaF0HKOIM0KWd-V9dSUlaTo;->f$0:Lcom/android/systemui/globalactions/util/CoverUtilWrapper;

    iput-object p2, p0, Lcom/android/systemui/globalactions/util/-$$Lambda$CoverUtilWrapper$sRJ2RaF0HKOIM0KWd-V9dSUlaTo;->f$1:Lcom/samsung/android/globalactions/util/CoverStateListener;

    return-void
.end method


# virtual methods
.method public final onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/-$$Lambda$CoverUtilWrapper$sRJ2RaF0HKOIM0KWd-V9dSUlaTo;->f$0:Lcom/android/systemui/globalactions/util/CoverUtilWrapper;

    iget-object p0, p0, Lcom/android/systemui/globalactions/util/-$$Lambda$CoverUtilWrapper$sRJ2RaF0HKOIM0KWd-V9dSUlaTo;->f$1:Lcom/samsung/android/globalactions/util/CoverStateListener;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->lambda$registerCoverStateListener$0$CoverUtilWrapper(Lcom/samsung/android/globalactions/util/CoverStateListener;Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method
