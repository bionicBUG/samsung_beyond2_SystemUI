.class Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;)V
    .locals 0

    .line 6420
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 6423
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1300(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method
