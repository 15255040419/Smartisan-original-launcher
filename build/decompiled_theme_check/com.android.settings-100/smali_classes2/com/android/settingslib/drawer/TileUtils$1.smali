.class final Lcom/android/settingslib/drawer/TileUtils$1;
.super Ljava/lang/Object;
.source "TileUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/drawer/TileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/drawer/DashboardCategory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/drawer/DashboardCategory;Lcom/android/settingslib/drawer/DashboardCategory;)I
    .locals 0

    .line 609
    iget p0, p2, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    iget p1, p1, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 606
    check-cast p1, Lcom/android/settingslib/drawer/DashboardCategory;

    check-cast p2, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/drawer/TileUtils$1;->compare(Lcom/android/settingslib/drawer/DashboardCategory;Lcom/android/settingslib/drawer/DashboardCategory;)I

    move-result p0

    return p0
.end method
