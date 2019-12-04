.class public Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/model/DynamicLockData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndicationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockButtonData;,
        Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$LockIconData;,
        Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;
    }
.end annotation


# instance fields
.field private mHelpTextData:Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "help_text"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;->this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpTextData()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;->mHelpTextData:Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;

    if-nez v0, :cond_0

    .line 839
    new-instance v0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;-><init>(Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;->mHelpTextData:Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;

    .line 841
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;->mHelpTextData:Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;

    return-object p0
.end method
