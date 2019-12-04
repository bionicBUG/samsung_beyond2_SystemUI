.class public abstract Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService$Stub;
.super Landroid/os/Binder;
.source "IEnterpriseMocanaVpnService.java"

# interfaces
.implements Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 287
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.mocana.vpn.android.velo.IEnterpriseMocanaVpnService"

    .line 288
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.mocana.vpn.android.velo.IEnterpriseMocanaVpnService"

    if-eq p1, v0, :cond_22

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1024
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 1016
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-interface {p0}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getFIPSMode()I

    move-result p0

    .line 1018
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1008
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-interface {p0}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->switchFIPSMode()I

    move-result p0

    .line 1010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 996
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1001
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->isUserAuthEnabled(Ljava/lang/String;I)I

    move-result p0

    .line 1002
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 982
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    move p4, v0

    .line 988
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 989
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setUserAuth(Ljava/lang/String;ZI)Z

    move-result p0

    .line 990
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1

    move v0, v1

    .line 991
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 970
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 974
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 975
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->isDefaultRouteEnabled(Ljava/lang/String;I)I

    move-result p0

    .line 976
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 956
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    move p4, v1

    goto :goto_1

    :cond_2
    move p4, v0

    .line 962
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 963
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->enableDefaultRoute(Ljava/lang/String;ZI)Z

    move-result p0

    .line 964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_3

    move v0, v1

    .line 965
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 944
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 948
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 949
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getSuiteBType(Ljava/lang/String;I)I

    move-result p0

    .line 950
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 930
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 934
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 936
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 937
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setSuiteBType(Ljava/lang/String;II)Z

    move-result p0

    .line 938
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_4

    move v0, v1

    .line 939
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 918
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 922
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 923
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getMobike(Ljava/lang/String;I)I

    move-result p0

    .line 924
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 904
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    move p4, v1

    goto :goto_2

    :cond_5
    move p4, v0

    .line 910
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 911
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setMobike(Ljava/lang/String;ZI)Z

    move-result p0

    .line 912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_6

    move v0, v1

    .line 913
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 892
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 897
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getDeadPeerDetection(Ljava/lang/String;I)I

    move-result p0

    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 878
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 882
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    move p4, v1

    goto :goto_3

    :cond_7
    move p4, v0

    .line 884
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 885
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setDeadPeerDetection(Ljava/lang/String;ZI)Z

    move-result p0

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_8

    move v0, v1

    .line 887
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 866
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 870
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 871
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getBackupServerName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 872
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 852
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 856
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 859
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setBackupServerName(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    .line 860
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_9

    move v0, v1

    .line 861
    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 840
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 845
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getSplitTunnelType(Ljava/lang/String;I)I

    move-result p0

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 826
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 830
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 833
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setSplitTunnelType(Ljava/lang/String;II)Z

    move-result p0

    .line 834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_a

    move v0, v1

    .line 835
    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 814
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 819
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getForwardRoutes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 800
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 807
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setForwardRoutes(Ljava/lang/String;Ljava/util/List;I)Z

    move-result p0

    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_b

    move v0, v1

    .line 809
    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 788
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 793
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->isAdminProfile(Ljava/lang/String;I)I

    move-result p0

    .line 794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 776
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 780
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 781
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getErrorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 764
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 768
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 769
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 752
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 757
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getIKEVersion(Ljava/lang/String;I)I

    move-result p0

    .line 758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 738
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 742
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 745
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setIKEVersion(Ljava/lang/String;II)Z

    move-result p0

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_c

    move v0, v1

    .line 747
    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 726
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 731
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getIPSecIdentfier(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 714
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 719
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getIPsecIdentifierType(Ljava/lang/String;I)I

    move-result p0

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 700
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 707
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setIPSecIdentfier(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_d

    move v0, v1

    .line 709
    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 686
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 693
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setIPsecIdentifierType(Ljava/lang/String;II)Z

    move-result p0

    .line 694
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_e

    move v0, v1

    .line 695
    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 674
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 679
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getDHGroup(Ljava/lang/String;I)I

    move-result p0

    .line 680
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 660
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 667
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setDHGroup(Ljava/lang/String;II)Z

    move-result p0

    .line 668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_f

    move v0, v1

    .line 669
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 648
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 653
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getPFS(Ljava/lang/String;I)I

    move-result p0

    .line 654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 634
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_10

    move p4, v1

    goto :goto_4

    :cond_10
    move p4, v0

    .line 640
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 641
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setPFS(Ljava/lang/String;ZI)Z

    move-result p0

    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_11

    move v0, v1

    .line 643
    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 622
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 627
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getP1Mode(Ljava/lang/String;I)I

    move-result p0

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 608
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 615
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setP1Mode(Ljava/lang/String;II)Z

    move-result p0

    .line 616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_12

    move v0, v1

    .line 617
    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 596
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 601
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getPresharedKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 582
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 589
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setPresharedKey(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_13

    move v0, v1

    .line 591
    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 570
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 575
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getAuthMethod(Ljava/lang/String;I)I

    move-result p0

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 558
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 563
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getUserPassword(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 546
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 551
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getUserName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 532
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 539
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setAuthMethod(Ljava/lang/String;II)Z

    move-result p0

    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_14

    move v0, v1

    .line 541
    :cond_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 518
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 525
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setUserPassword(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_15

    move v0, v1

    .line 527
    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 504
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 511
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setUserName(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_16

    move v0, v1

    .line 513
    :cond_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 490
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    move-result-object p4

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 497
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->stopConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result p0

    .line 498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_17

    move v0, v1

    .line 499
    :cond_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 476
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    move-result-object p4

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 483
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result p0

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_18

    move v0, v1

    .line 485
    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 464
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 469
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getServerName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 450
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 457
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setServerName(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_19

    move v0, v1

    .line 459
    :cond_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 432
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 437
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getCACertificate(Ljava/lang/String;I)Landroid/app/enterprise/CertificateInfo;

    move-result-object p0

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1a

    .line 440
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    invoke-virtual {p0, p3, v1}, Landroid/app/enterprise/CertificateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 444
    :cond_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v1

    .line 414
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 419
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getUserCertificate(Ljava/lang/String;I)Landroid/app/enterprise/CertificateInfo;

    move-result-object p0

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1b

    .line 422
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    invoke-virtual {p0, p3, v1}, Landroid/app/enterprise/CertificateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 426
    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v1

    .line 398
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 407
    invoke-interface {p0, p1, p4, v2, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setCACertificate(Ljava/lang/String;[BLjava/lang/String;I)Z

    move-result p0

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1c

    move v0, v1

    .line 409
    :cond_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 382
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 391
    invoke-interface {p0, p1, p4, v2, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setUserCertificate(Ljava/lang/String;[BLjava/lang/String;I)Z

    move-result p0

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1d

    move v0, v1

    .line 393
    :cond_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 364
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 369
    invoke-interface {p0, p1, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getConnection(Ljava/lang/String;I)Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    move-result-object p0

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1e

    .line 372
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    invoke-virtual {p0, p3, v1}, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 376
    :cond_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v1

    .line 354
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 357
    invoke-interface {p0, p1}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getAllConnections(I)Ljava/util/List;

    move-result-object p0

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 340
    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    move-result-object p4

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 347
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->removeConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result p0

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1f

    move v0, v1

    .line 349
    :cond_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 321
    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_20

    .line 324
    sget-object p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    goto :goto_8

    :cond_20
    const/4 p1, 0x0

    .line 330
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 333
    invoke-interface {p0, p1, p4, p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->createConnection(Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;Ljava/lang/String;I)Z

    move-result p0

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_21

    move v0, v1

    .line 335
    :cond_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 316
    :cond_22
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
