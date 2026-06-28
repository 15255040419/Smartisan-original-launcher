.class Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;
.super Ljava/lang/Object;
.source "LocaleDisplayNames.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/LocaleDisplayNames$UiListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiListItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final useSelf:Z


# direct methods
.method constructor <init>(Ljava/util/Comparator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->collator:Ljava/util/Comparator;

    .line 363
    iput-boolean p2, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->useSelf:Z

    return-void
.end method


# virtual methods
.method public compare(Landroid/icu/text/LocaleDisplayNames$UiListItem;Landroid/icu/text/LocaleDisplayNames$UiListItem;)I
    .locals 2

    .line 367
    iget-boolean v0, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->useSelf:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->collator:Ljava/util/Comparator;

    iget-object v0, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    iget-object v1, p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    .line 368
    :cond_0
    iget-object p0, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->collator:Ljava/util/Comparator;

    iget-object v0, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    iget-object v1, p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    .line 369
    :cond_1
    iget-object p0, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    iget-object p1, p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->compareTo(Landroid/icu/util/ULocale;)I

    move-result p0

    :goto_1
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 358
    check-cast p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    check-cast p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->compare(Landroid/icu/text/LocaleDisplayNames$UiListItem;Landroid/icu/text/LocaleDisplayNames$UiListItem;)I

    move-result p0

    return p0
.end method
