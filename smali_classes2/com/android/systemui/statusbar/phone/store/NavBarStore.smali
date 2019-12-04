.class public interface abstract Lcom/android/systemui/statusbar/phone/store/NavBarStore;
.super Ljava/lang/Object;
.source "NavBarStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;,
        Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;,
        Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;
    }
.end annotation


# virtual methods
.method public abstract apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z
.end method

.method public abstract apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;Ljava/lang/Object;)Z
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract getProvider(I)Ljava/lang/Object;
.end method

.method public abstract getResult(Lcom/android/systemui/statusbar/phone/store/EventType;)Ljava/lang/Object;
.end method

.method public abstract getValue(Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;)Ljava/lang/Object;
.end method

.method public abstract handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/statusbar/phone/store/EventType;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract init(Lcom/android/systemui/statusbar/phone/bandaid/BandAidPackFactoryBase;)V
.end method

.method public abstract isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z
.end method

.method public abstract setProvider(ILjava/lang/Object;)V
.end method

.method public abstract setResult(Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/lang/Object;)V
.end method
