.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CoverServiceHost$94Lgi7fcbwARpJjIAXJt2bKU6P4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CoverServiceHost$94Lgi7fcbwARpJjIAXJt2bKU6P4;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CoverServiceHost$94Lgi7fcbwARpJjIAXJt2bKU6P4;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->lambda$updateCoverState$0$StatusBar$CoverServiceHost()V

    return-void
.end method
