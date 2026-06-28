.class Lcom/android/settingslib/location/RecentLocationApps$1;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/location/RecentLocationApps;->getAppListSorted()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/location/RecentLocationApps$Request;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/location/RecentLocationApps;


# direct methods
.method constructor <init>(Lcom/android/settingslib/location/RecentLocationApps;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps$1;->this$0:Lcom/android/settingslib/location/RecentLocationApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/location/RecentLocationApps$Request;Lcom/android/settingslib/location/RecentLocationApps$Request;)I
    .locals 2

    .line 109
    iget-wide p0, p1, Lcom/android/settingslib/location/RecentLocationApps$Request;->requestFinishTime:J

    iget-wide v0, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->requestFinishTime:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 106
    check-cast p1, Lcom/android/settingslib/location/RecentLocationApps$Request;

    check-cast p2, Lcom/android/settingslib/location/RecentLocationApps$Request;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/location/RecentLocationApps$1;->compare(Lcom/android/settingslib/location/RecentLocationApps$Request;Lcom/android/settingslib/location/RecentLocationApps$Request;)I

    move-result p0

    return p0
.end method
