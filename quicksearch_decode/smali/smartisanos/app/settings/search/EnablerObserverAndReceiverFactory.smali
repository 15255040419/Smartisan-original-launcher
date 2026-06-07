.class public Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;
.super Ljava/lang/Object;
.source "EnablerObserverAndReceiverFactory.java"

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory$ContentChangeListenerExpand;,
        Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory$ContentChangeListener;
    }
.end annotation

.field private static final sInstance:Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;

.field private mListener:Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory$ContentChangeListener;

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;

    invoke-direct {v0}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;-><init>()V

    sput-object v0, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->sInstance:Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;
    .locals 1

    sget-object v0, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->sInstance:Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;

    return-object v0
.end method

.method public clearObserverAndReceivers(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public registerObserverAndReceiver(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public setContentChangeListener(Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory$ContentChangeListener;)V
    .locals 0

    iput-object p1, p0, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->mListener:Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory$ContentChangeListener;

    return-void
.end method
