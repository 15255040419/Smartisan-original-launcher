.class public Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMethodSettings"
.end annotation


# static fields
.field private static final CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUserManagerInternal:Landroid/os/UserManagerInternal;


# instance fields
.field private mCopyOnWrite:Z

.field private final mCopyOnWriteDataStore:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I

.field private mCurrentUserId:I

.field private mEnabledInputMethodsStrCache:Ljava/lang/String;

.field private final mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRes:Landroid/content/res/Resources;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 559
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    .line 561
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 564
    const-class v0, Landroid/os/UserManagerInternal;

    .line 565
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->sUserManagerInternal:Landroid/os/UserManagerInternal;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;IZ)V"
        }
    .end annotation

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    new-instance p4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v0, 0x3a

    invoke-direct {p4, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object p4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 547
    new-instance p4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v0, 0x3b

    invoke-direct {p4, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object p4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 557
    new-instance p4, Landroid/util/ArrayMap;

    invoke-direct {p4}, Landroid/util/ArrayMap;-><init>()V

    iput-object p4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    const/4 p4, 0x0

    .line 567
    iput-boolean p4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    const-string v0, ""

    .line 568
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    new-array p4, p4, [I

    .line 572
    iput-object p4, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    .line 612
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mRes:Landroid/content/res/Resources;

    .line 613
    iput-object p2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    .line 614
    iput-object p3, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    .line 615
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    return-void
.end method

.method private addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 858
    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;

    move-result-object v0

    .line 859
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 860
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 866
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 873
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->saveSubtypeHistory(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 576
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x3b

    .line 580
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/text/TextUtils$SimpleStringSplitter;",
            "Landroid/text/TextUtils$SimpleStringSplitter;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 592
    :cond_0
    invoke-virtual {p1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 593
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 594
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    .line 595
    invoke-virtual {p2, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 597
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 599
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 600
    :goto_1
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 601
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 603
    :cond_2
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private createEnabledInputMethodListLocked(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 795
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 796
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 797
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v1, :cond_0

    .line 798
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v2

    if-nez v2, :cond_0

    .line 799
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 684
    invoke-direct {p0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getEnabledSubtypeHashCodeForInputMethodAndSubtypeLocked(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 931
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 932
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 933
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 934
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodInfo;

    .line 935
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_5

    .line 940
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    if-lez p1, :cond_5

    .line 941
    iget-object p0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mRes:Landroid/content/res/Resources;

    .line 942
    invoke-static {p0, p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 944
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_5

    .line 946
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 947
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p3

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 954
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 955
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 958
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 960
    invoke-static {p2, p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object p1

    .line 963
    :cond_4
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->access$000()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 966
    :catch_0
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->access$000()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 972
    :cond_5
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->access$000()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 1

    .line 672
    iget-boolean v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    iget-object p0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 674
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :cond_0
    return p2

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 905
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 906
    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;

    move-result-object v1

    .line 907
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 908
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 910
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 911
    :cond_1
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 913
    invoke-direct {p0, v0, v3, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledSubtypeHashCodeForInputMethodAndSubtypeLocked(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 915
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 919
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSelectedInputMethodSubtypeHashCode()I
    .locals 2

    const-string/jumbo v0, "selected_input_method_subtype"

    const/4 v1, -0x1

    .line 1063
    invoke-direct {p0, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 653
    iget-boolean v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object p0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, p2

    :goto_1
    return-object p0
.end method

.method private getSubtypeHistoryStr()Ljava/lang/String;
    .locals 2

    const-string v0, "input_methods_subtype_history"

    const-string v1, ""

    .line 1005
    invoke-direct {p0, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private loadInputMethodAndSubtypeHistoryLocked()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 981
    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSubtypeHistoryStr()Ljava/lang/String;

    move-result-object v1

    .line 982
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 985
    :cond_0
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 986
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 987
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 988
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 990
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    .line 992
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 993
    iget-object v3, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 994
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 997
    :cond_2
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private putBoolean(Ljava/lang/String;Z)V
    .locals 0

    .line 680
    invoke-direct {p0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private putInt(Ljava/lang/String;I)V
    .locals 2

    .line 662
    iget-boolean v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_0

    .line 663
    iget-object p0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 665
    :cond_0
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->sUserManagerInternal:Landroid/os/UserManagerInternal;

    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    .line 666
    invoke-virtual {v0, v1}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    .line 667
    :goto_0
    iget-object p0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_1
    return-void
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 641
    iget-boolean v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_0

    .line 642
    iget-object p0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 644
    :cond_0
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->sUserManagerInternal:Landroid/os/UserManagerInternal;

    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    .line 645
    invoke-virtual {v0, v1}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    .line 646
    :goto_0
    iget-object p0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_1
    return-void
.end method

.method private putSubtypeHistoryStr(Ljava/lang/String;)V
    .locals 2

    .line 880
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "input_methods_subtype_history"

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 883
    invoke-direct {p0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 885
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private saveSubtypeHistory(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 834
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x3b

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 835
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 839
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 840
    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 841
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    .line 842
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 843
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->access$000()Ljava/lang/String;

    move-result-object p3

    :cond_1
    if-eqz p2, :cond_2

    const/16 v4, 0x3a

    .line 846
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    move p2, v2

    .line 850
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 854
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSubtypeHistoryStr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    .line 753
    :cond_0
    iget-object p2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 755
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    goto :goto_0

    .line 757
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 770
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 771
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 772
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/16 v3, 0x3a

    .line 779
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move v1, v4

    .line 783
    :goto_1
    invoke-static {p1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildEnabledInputMethodsSettingString(Ljava/lang/StringBuilder;Landroid/util/Pair;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 788
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurrentProfileIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCopyOnWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mEnabledInputMethodsStrCache="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentUserId()I
    .locals 0

    .line 1076
    iget p0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    return p0
.end method

.method public getDefaultChsInputMethod()Ljava/lang/String;
    .locals 2

    .line 1054
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    const-string v1, "default_chs_input_method"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodListLocked()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 705
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 704
    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->createEnabledInputMethodListLocked(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 711
    invoke-virtual {p0, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 712
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 714
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 713
    invoke-static {p0, p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object p0

    :cond_0
    const/4 p3, 0x0

    .line 716
    invoke-static {p1, p3, p2, p0}, Landroid/view/inputmethod/InputMethodSubtype;->sort(Landroid/content/Context;ILandroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 721
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 722
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 724
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 725
    iget-object v3, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v3, :cond_0

    .line 726
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 727
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_3

    .line 729
    invoke-virtual {v3, p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 730
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 731
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 732
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 744
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    iget-object p0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-static {v0, v1, p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodsStr()Ljava/lang/String;
    .locals 2

    const-string v0, "enabled_input_methods"

    const-string v1, ""

    .line 822
    invoke-direct {p0, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    .line 827
    iget-object p0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    return-object p0
.end method

.method public getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 891
    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 895
    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLockedInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 897
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectedInputMethod()Ljava/lang/String;
    .locals 2

    const-string v0, "default_input_method"

    const/4 v1, 0x0

    .line 1040
    invoke-direct {p0, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedInputMethodSubtypeId(Ljava/lang/String;)I
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1084
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeHashCode()I

    move-result p0

    .line 1085
    invoke-static {p1, p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p0

    return p0
.end method

.method public isCurrentProfile(I)Z
    .locals 4

    .line 694
    monitor-enter p0

    .line 695
    :try_start_0
    iget v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 696
    :goto_0
    iget-object v3, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 697
    iget-object v3, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 699
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 700
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isShowImeWithHardKeyboardEnabled()Z
    .locals 2

    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    const/4 v1, 0x0

    .line 1067
    invoke-direct {p0, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSubtypeSelected()Z
    .locals 1

    .line 1059
    invoke-direct {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeHashCode()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public putDefaultChsInputMethod(Ljava/lang/String;)V
    .locals 2

    .line 1026
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    const-string v1, "default_chs_input_method"

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method putEnabledInputMethodsStr(Ljava/lang/String;)V
    .locals 2

    .line 809
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "enabled_input_methods"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 812
    invoke-direct {p0, v1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 814
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 817
    :goto_1
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    return-void
.end method

.method public putSelectedInputMethod(Ljava/lang/String;)V
    .locals 1

    const-string v0, "default_input_method"

    .line 1017
    invoke-direct {p0, v0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putSelectedSubtype(I)V
    .locals 1

    const-string/jumbo v0, "selected_input_method_subtype"

    .line 1035
    invoke-direct {p0, v0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1

    .line 1090
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1092
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1094
    :cond_0
    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1095
    invoke-direct {p0, p1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setCurrentProfileIds([I)V
    .locals 0

    .line 688
    monitor-enter p0

    .line 689
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentProfileIds:[I

    .line 690
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setShowImeWithHardKeyboard(Z)V
    .locals 1

    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    .line 1071
    invoke-direct {p0, v0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public switchCurrentUser(IZ)V
    .locals 1

    .line 630
    iget v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    if-eq v0, p2, :cond_1

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWriteDataStore:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const-string v0, ""

    .line 632
    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mEnabledInputMethodsStrCache:Ljava/lang/String;

    .line 635
    :cond_1
    iput p1, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCurrentUserId:I

    .line 636
    iput-boolean p2, p0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->mCopyOnWrite:Z

    return-void
.end method
