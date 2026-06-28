.class final Lcom/android/settingslib/applications/ApplicationsState$4;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I
    .locals 4

    .line 1508
    iget-wide v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    iget-wide v2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1509
    :cond_0
    iget-wide v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    iget-wide v2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 1510
    :cond_1
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1505
    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    check-cast p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$4;->compare(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I

    move-result p0

    return p0
.end method
