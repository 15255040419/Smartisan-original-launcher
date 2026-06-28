.class public Landroid/icu/number/LocalizedNumberFormatter;
.super Landroid/icu/number/NumberFormatterSettings;
.source "LocalizedNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/number/NumberFormatterSettings<",
        "Landroid/icu/number/LocalizedNumberFormatter;",
        ">;"
    }
.end annotation


# static fields
.field static final callCount:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Landroid/icu/number/LocalizedNumberFormatter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile callCountInternal:J

.field volatile compiled:Landroid/icu/number/NumberFormatterImpl;

.field volatile savedWithUnit:Landroid/icu/number/LocalizedNumberFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-class v0, Landroid/icu/number/LocalizedNumberFormatter;

    const-string v1, "callCountInternal"

    .line 31
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Landroid/icu/number/LocalizedNumberFormatter;->callCount:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method constructor <init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberFormatterSettings<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/number/NumberFormatterSettings;-><init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method create(ILjava/lang/Object;)Landroid/icu/number/LocalizedNumberFormatter;
    .locals 1

    .line 150
    new-instance v0, Landroid/icu/number/LocalizedNumberFormatter;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/number/LocalizedNumberFormatter;-><init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method

.method bridge synthetic create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/icu/number/LocalizedNumberFormatter;->create(ILjava/lang/Object;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object p0

    return-object p0
.end method

.method public format(D)Landroid/icu/number/FormattedNumber;
    .locals 1

    .line 66
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(D)V

    invoke-virtual {p0, v0}, Landroid/icu/number/LocalizedNumberFormatter;->format(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    return-object p0
.end method

.method public format(J)Landroid/icu/number/FormattedNumber;
    .locals 1

    .line 52
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(J)V

    invoke-virtual {p0, v0}, Landroid/icu/number/LocalizedNumberFormatter;->format(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    return-object p0
.end method

.method public format(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/number/FormattedNumber;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    invoke-virtual {p0}, Landroid/icu/number/LocalizedNumberFormatter;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v0

    .line 134
    sget-object v1, Landroid/icu/number/LocalizedNumberFormatter;->callCount:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v1

    .line 135
    new-instance v3, Landroid/icu/impl/number/NumberStringBuilder;

    invoke-direct {v3}, Landroid/icu/impl/number/NumberStringBuilder;-><init>()V

    .line 137
    iget-object v4, v0, Landroid/icu/impl/number/MacroProps;->threshold:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    .line 138
    invoke-static {v0}, Landroid/icu/number/NumberFormatterImpl;->fromMacros(Landroid/icu/impl/number/MacroProps;)Landroid/icu/number/NumberFormatterImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/number/LocalizedNumberFormatter;->compiled:Landroid/icu/number/NumberFormatterImpl;

    .line 139
    iget-object p0, p0, Landroid/icu/number/LocalizedNumberFormatter;->compiled:Landroid/icu/number/NumberFormatterImpl;

    invoke-virtual {p0, p1, v3}, Landroid/icu/number/NumberFormatterImpl;->apply(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/NumberStringBuilder;)Landroid/icu/impl/number/MicroProps;

    move-result-object p0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v1, p0, Landroid/icu/number/LocalizedNumberFormatter;->compiled:Landroid/icu/number/NumberFormatterImpl;

    if-eqz v1, :cond_1

    .line 141
    iget-object p0, p0, Landroid/icu/number/LocalizedNumberFormatter;->compiled:Landroid/icu/number/NumberFormatterImpl;

    invoke-virtual {p0, p1, v3}, Landroid/icu/number/NumberFormatterImpl;->apply(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/NumberStringBuilder;)Landroid/icu/impl/number/MicroProps;

    move-result-object p0

    goto :goto_0

    .line 143
    :cond_1
    invoke-static {v0, p1, v3}, Landroid/icu/number/NumberFormatterImpl;->applyStatic(Landroid/icu/impl/number/MacroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/NumberStringBuilder;)Landroid/icu/impl/number/MicroProps;

    move-result-object p0

    .line 145
    :goto_0
    new-instance v0, Landroid/icu/number/FormattedNumber;

    invoke-direct {v0, v3, p1, p0}, Landroid/icu/number/FormattedNumber;-><init>(Landroid/icu/impl/number/NumberStringBuilder;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MicroProps;)V

    return-object v0
.end method

.method public format(Landroid/icu/util/Measure;)Landroid/icu/number/FormattedNumber;
    .locals 3

    .line 98
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object p1

    .line 101
    invoke-virtual {p0}, Landroid/icu/number/LocalizedNumberFormatter;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v1

    iget-object v1, v1, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v1, v0}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Landroid/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    return-object p0

    .line 106
    :cond_0
    iget-object v1, p0, Landroid/icu/number/LocalizedNumberFormatter;->savedWithUnit:Landroid/icu/number/LocalizedNumberFormatter;

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v1}, Landroid/icu/number/LocalizedNumberFormatter;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v2

    iget-object v2, v2, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v2, v0}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    :cond_1
    new-instance v1, Landroid/icu/number/LocalizedNumberFormatter;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2, v0}, Landroid/icu/number/LocalizedNumberFormatter;-><init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    .line 109
    iput-object v1, p0, Landroid/icu/number/LocalizedNumberFormatter;->savedWithUnit:Landroid/icu/number/LocalizedNumberFormatter;

    .line 111
    :cond_2
    invoke-virtual {v1, p1}, Landroid/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    return-object p0
.end method

.method public format(Ljava/lang/Number;)Landroid/icu/number/FormattedNumber;
    .locals 1

    .line 80
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Landroid/icu/number/LocalizedNumberFormatter;->format(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    return-object p0
.end method
