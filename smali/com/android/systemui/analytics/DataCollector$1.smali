.class Lcom/android/systemui/analytics/DataCollector$1;
.super Landroid/database/ContentObserver;
.source "DataCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/analytics/DataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/analytics/DataCollector;


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector$1;->this$0:Lcom/android/systemui/analytics/DataCollector;

    invoke-static {p0}, Lcom/android/systemui/analytics/DataCollector;->access$000(Lcom/android/systemui/analytics/DataCollector;)V

    return-void
.end method
