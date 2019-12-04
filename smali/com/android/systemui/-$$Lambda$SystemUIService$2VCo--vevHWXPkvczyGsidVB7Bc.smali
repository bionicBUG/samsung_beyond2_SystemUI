.class public final synthetic Lcom/android/systemui/-$$Lambda$SystemUIService$2VCo--vevHWXPkvczyGsidVB7Bc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/SystemUIService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SystemUIService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$SystemUIService$2VCo--vevHWXPkvczyGsidVB7Bc;->f$0:Lcom/android/systemui/SystemUIService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$SystemUIService$2VCo--vevHWXPkvczyGsidVB7Bc;->f$0:Lcom/android/systemui/SystemUIService;

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->lambda$printMemoryInfo$0$SystemUIService()V

    return-void
.end method
