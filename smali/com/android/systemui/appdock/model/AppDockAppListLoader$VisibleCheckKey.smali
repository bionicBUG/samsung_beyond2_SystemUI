.class public Lcom/android/systemui/appdock/model/AppDockAppListLoader$VisibleCheckKey;
.super Ljava/lang/Object;
.source "AppDockAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/model/AppDockAppListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibleCheckKey"
.end annotation


# instance fields
.field isExistSameActivity:Z

.field key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$VisibleCheckKey;->key:Ljava/lang/String;

    .line 153
    iput-boolean p2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$VisibleCheckKey;->isExistSameActivity:Z

    return-void
.end method
