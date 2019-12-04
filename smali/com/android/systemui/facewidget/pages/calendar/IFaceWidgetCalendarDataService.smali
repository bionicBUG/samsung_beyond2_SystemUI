.class public interface abstract Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService;
.super Ljava/lang/Object;
.source "IFaceWidgetCalendarDataService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService$Stub;,
        Lcom/android/systemui/facewidget/pages/calendar/IFaceWidgetCalendarDataService$Default;
    }
.end annotation


# virtual methods
.method public abstract getFaceWidgetCalendarData(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
