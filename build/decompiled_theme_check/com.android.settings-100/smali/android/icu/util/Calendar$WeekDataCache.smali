.class Landroid/icu/util/Calendar$WeekDataCache;
.super Landroid/icu/impl/SoftCache;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeekDataCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/util/Calendar$WeekData;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4772
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/Calendar$1;)V
    .locals 0

    .line 4772
    invoke-direct {p0}, Landroid/icu/util/Calendar$WeekDataCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;
    .locals 0

    .line 4779
    invoke-static {p1}, Landroid/icu/util/Calendar;->access$1400(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4772
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar$WeekDataCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;

    move-result-object p0

    return-object p0
.end method
