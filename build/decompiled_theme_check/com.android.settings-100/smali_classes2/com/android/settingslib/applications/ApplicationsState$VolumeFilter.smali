.class public Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeFilter"
.end annotation


# instance fields
.field private final mVolumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1726
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;->mVolumeUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 0

    .line 1735
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;->mVolumeUuid:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public init()V
    .locals 0

    return-void
.end method
