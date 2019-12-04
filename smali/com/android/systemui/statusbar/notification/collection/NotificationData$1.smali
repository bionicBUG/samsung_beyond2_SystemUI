.class Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/collection/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance p1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {p1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 88
    new-instance p1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {p1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 92
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 93
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 99
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->semPriority:I

    .line 100
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->semPriority:I

    .line 102
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$000(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v7

    const/4 v8, 0x3

    if-eqz v7, :cond_0

    .line 104
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v7, v8, v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 105
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v7, v8, v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 106
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v8

    .line 107
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v7

    .line 108
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v10}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v10

    .line 109
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v11}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v11

    goto :goto_0

    :cond_0
    move v7, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 112
    :goto_0
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$100(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object v12

    .line 115
    iget-object v13, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_1

    if-le v8, v14, :cond_1

    move v13, v14

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 117
    :goto_1
    iget-object v15, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-le v7, v14, :cond_2

    move v12, v14

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    const/4 v15, 0x4

    if-lt v8, v15, :cond_3

    .line 121
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v14

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-lt v7, v15, :cond_4

    .line 123
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v14

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    .line 126
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v15

    .line 127
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v9

    if-nez v15, :cond_6

    if-nez v13, :cond_6

    if-nez v8, :cond_6

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v16

    if-eqz v16, :cond_5

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    :cond_6
    :goto_5
    invoke-virtual {v1, v14}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setIsTopBucket(Z)V

    if-nez v9, :cond_8

    if-nez v12, :cond_8

    if-nez v7, :cond_8

    .line 133
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v14

    if-eqz v14, :cond_7

    goto :goto_6

    :cond_7
    const/4 v14, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v14, 0x1

    :goto_7
    invoke-virtual {v2, v14}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setIsTopBucket(Z)V

    const/4 v14, -0x1

    if-eq v15, v9, :cond_a

    if-eqz v15, :cond_9

    goto :goto_8

    :cond_9
    const/4 v14, 0x1

    :goto_8
    return v14

    :cond_a
    if-eqz v15, :cond_b

    .line 139
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$300(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v0

    return v0

    :cond_b
    if-eq v5, v6, :cond_d

    if-le v5, v6, :cond_c

    goto :goto_9

    :cond_c
    const/4 v14, 0x1

    :goto_9
    return v14

    .line 144
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingAmbientPulsing()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingAmbientPulsing()Z

    move-result v5

    if-eq v0, v5, :cond_f

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingAmbientPulsing()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_a

    :cond_e
    const/4 v14, 0x1

    :goto_a
    return v14

    :cond_f
    if-eq v13, v12, :cond_11

    if-eqz v13, :cond_10

    goto :goto_b

    :cond_10
    const/4 v14, 0x1

    :goto_b
    return v14

    :cond_11
    if-eq v8, v7, :cond_13

    if-eqz v8, :cond_12

    goto :goto_c

    :cond_12
    const/4 v14, 0x1

    :goto_c
    return v14

    .line 152
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v5

    if-eq v0, v5, :cond_14

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    mul-int/2addr v0, v14

    return v0

    :cond_14
    if-eq v10, v11, :cond_15

    sub-int/2addr v10, v11

    return v10

    .line 157
    :cond_15
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 86
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    return p0
.end method
