.class Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;
.super Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;
.source "SmartPopupViewItem.java"


# instance fields
.field private mNotification:Landroid/app/Notification;

.field private mNotificationKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Notification;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mPackageName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;->mNotification:Landroid/app/Notification;

    .line 15
    iput-object p3, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;->mNotificationKey:Ljava/lang/String;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mAnimationCompleted:Z

    return-void
.end method


# virtual methods
.method getNotification()Landroid/app/Notification;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;->mNotification:Landroid/app/Notification;

    return-object p0
.end method

.method getNotificationKey()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;->mNotificationKey:Ljava/lang/String;

    return-object p0
.end method

.method loadShowingIcon(Landroid/content/Context;)V
    .locals 1

    .line 41
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewIconLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;)V

    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->getShowingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->setShowingIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartPopupViewItem {mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotificationKey= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;->mNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
