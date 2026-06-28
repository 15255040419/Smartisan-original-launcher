.class Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;
.super Ljava/lang/Object;
.source "DreamBackend.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/dream/DreamBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DreamInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/dream/DreamBackend$DreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDefaultDream:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p1, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;->mDefaultDream:Landroid/content/ComponentName;

    return-void
.end method

.method private sortKey(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Ljava/lang/String;
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    iget-object v1, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;->mDefaultDream:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x30

    goto :goto_0

    :cond_0
    const/16 p0, 0x31

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    iget-object p0, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)I
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;->sortKey(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;->sortKey(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 343
    check-cast p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    check-cast p2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;->compare(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)I

    move-result p0

    return p0
.end method
